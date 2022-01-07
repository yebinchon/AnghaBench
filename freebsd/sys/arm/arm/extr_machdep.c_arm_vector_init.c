
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int ;


 int ARM_NVEC ;
 scalar_t__ ARM_VECTORS_HIGH ;
 int CPU_CONTROL_VECRELOC ;
 int cpu_control (int ,int ) ;
 int icache_sync (scalar_t__,int) ;
 unsigned int* page0 ;
 unsigned int* page0_data ;
 scalar_t__ vector_page ;

void
arm_vector_init(vm_offset_t va, int which)
{
 unsigned int *vectors = (int *) va;
 unsigned int *vectors_data = vectors + (page0_data - page0);
 int vec;





 for (vec = 0; vec < ARM_NVEC; vec++) {
  if ((which & (1 << vec)) == 0) {

   continue;
  }
  vectors[vec] = page0[vec];
  vectors_data[vec] = page0_data[vec];
 }


 icache_sync(va, (ARM_NVEC * 2) * sizeof(u_int));

 vector_page = va;

 if (va == ARM_VECTORS_HIGH) {
  cpu_control(CPU_CONTROL_VECRELOC, CPU_CONTROL_VECRELOC);
 }

}
