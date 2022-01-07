
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 scalar_t__ MV_SOC_UNSUPPORTED ;
 int VM_MEMATTR_DEVICE ;
 int VM_MEMATTR_SO ;
 int arm_tmr_change_frequency (int) ;
 scalar_t__ armada38x_mbus_optimization () ;
 scalar_t__ armada38x_open_bootrom_win () ;
 scalar_t__ armada38x_scu_enable () ;
 scalar_t__ armada38x_win_set_iosync_barrier () ;
 int get_cpu_freq () ;
 scalar_t__ mv_check_soc_family () ;
 int panic (char*) ;
 int pmap_remap_vm_attr (int ,int ) ;
 int printf (char*) ;
 scalar_t__ soc_decode_win () ;

__attribute__((used)) static void
mv_a38x_platform_late_init(platform_t plate)
{




 if (mv_check_soc_family() == MV_SOC_UNSUPPORTED)
  panic("Unsupported SoC family\n");

 if (soc_decode_win() != 0)
  printf("WARNING: could not re-initialise decode windows! "
      "Running with existing settings...\n");


 arm_tmr_change_frequency(get_cpu_freq() / 2);
 pmap_remap_vm_attr(VM_MEMATTR_DEVICE, VM_MEMATTR_SO);


 if (armada38x_win_set_iosync_barrier() != 0)
  printf("WARNING: could not map CPU Subsystem registers\n");
 if (armada38x_mbus_optimization() != 0)
  printf("WARNING: could not enable mbus optimization\n");
 if (armada38x_scu_enable() != 0)
  printf("WARNING: could not enable SCU\n");





}
