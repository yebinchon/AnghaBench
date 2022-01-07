
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;
typedef scalar_t__ u_long ;
typedef int platform_t ;
typedef int bus_addr_t ;


 int AL_CPU_RESUME_FLG_PERCPU_DONT_RESUME ;
 int AL_CPU_RESUME_MAGIC_NUM ;
 int AL_CPU_RESUME_MAGIC_NUM_MASK ;
 int AL_CPU_RESUME_MIN_VER ;
 int AL_CPU_RESUME_MIN_VER_MASK ;
 int AL_CPU_RESUME_PCPU_FLAGS (int) ;
 int AL_CPU_RESUME_PCPU_RADDR_REG (int) ;
 int AL_CPU_RESUME_WATERMARK_REG ;
 int AL_NB_CONFIG_STATUS_PWR_CTRL (int) ;
 int AL_NB_INIT_CONTROL ;
 scalar_t__ al_devmap_pa ;
 scalar_t__ alpine_get_cpu_resume_base (scalar_t__*,scalar_t__*) ;
 scalar_t__ alpine_get_nb_base (scalar_t__*,scalar_t__*) ;
 scalar_t__ bus_space_map (int ,scalar_t__,scalar_t__,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,scalar_t__) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int dsb () ;
 int fdtbus_bs_tag ;
 int mb () ;
 scalar_t__ mpentry ;
 int panic (char*) ;
 int platform_mp_get_core_cnt () ;
 int pmap_kextract (scalar_t__) ;

void
alpine_mp_start_ap(platform_t plat)
{
 uint32_t physaddr;
 vm_offset_t vaddr;
 uint32_t val;
 uint32_t start_mask;
 u_long cpu_resume_base;
 u_long nb_base;
 u_long cpu_resume_size;
 u_long nb_size;
 bus_addr_t cpu_resume_baddr;
 bus_addr_t nb_baddr;
 int a;

 if (alpine_get_cpu_resume_base(&cpu_resume_base, &cpu_resume_size))
  panic("Couldn't resolve cpu_resume_base address\n");

 if (alpine_get_nb_base(&nb_base, &nb_size))
  panic("Couldn't resolve_nb_base address\n");


 if (bus_space_map(fdtbus_bs_tag, al_devmap_pa + cpu_resume_base,
     cpu_resume_size, 0, &cpu_resume_baddr))
  panic("Couldn't map CPU-resume area");
 if (bus_space_map(fdtbus_bs_tag, al_devmap_pa + nb_base,
     nb_size, 0, &nb_baddr))
  panic("Couldn't map NB-service area");


 val = bus_space_read_4(fdtbus_bs_tag, cpu_resume_baddr,
     AL_CPU_RESUME_WATERMARK_REG);
 if (((val & AL_CPU_RESUME_MAGIC_NUM_MASK) != AL_CPU_RESUME_MAGIC_NUM) ||
     ((val & AL_CPU_RESUME_MIN_VER_MASK) < AL_CPU_RESUME_MIN_VER)) {
  panic("CPU-resume device is not compatible");
 }

 vaddr = (vm_offset_t)mpentry;
 physaddr = pmap_kextract(vaddr);

 for (a = 1; a < platform_mp_get_core_cnt(); a++) {

  bus_space_write_4(fdtbus_bs_tag, nb_baddr,
      AL_NB_CONFIG_STATUS_PWR_CTRL(a), 0);
  mb();


  val = bus_space_read_4(fdtbus_bs_tag, cpu_resume_baddr,
      AL_CPU_RESUME_PCPU_FLAGS(a));
  val &= ~AL_CPU_RESUME_FLG_PERCPU_DONT_RESUME;
  bus_space_write_4(fdtbus_bs_tag, cpu_resume_baddr,
      AL_CPU_RESUME_PCPU_FLAGS(a), val);
  mb();


  bus_space_write_4(fdtbus_bs_tag, cpu_resume_baddr,
      AL_CPU_RESUME_PCPU_RADDR_REG(a), physaddr);
  mb();
 }


 if (bus_space_map(fdtbus_bs_tag, al_devmap_pa + nb_base,
     nb_size, 0, &nb_baddr))
  panic("Couldn't map NB-service area");

 start_mask = (1 << platform_mp_get_core_cnt()) - 1;


 val = bus_space_read_4(fdtbus_bs_tag, nb_baddr, AL_NB_INIT_CONTROL);
 val |= start_mask;
 bus_space_write_4(fdtbus_bs_tag, nb_baddr, AL_NB_INIT_CONTROL, val);
 dsb();

 bus_space_unmap(fdtbus_bs_tag, nb_baddr, nb_size);
 bus_space_unmap(fdtbus_bs_tag, cpu_resume_baddr, cpu_resume_size);
}
