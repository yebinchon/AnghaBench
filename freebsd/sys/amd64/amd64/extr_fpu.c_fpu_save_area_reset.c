
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savefpu {int dummy; } ;


 int bcopy (int ,struct savefpu*,int ) ;
 int cpu_max_ext_state_size ;
 int fpu_initialstate ;

void
fpu_save_area_reset(struct savefpu *fsa)
{

 bcopy(fpu_initialstate, fsa, cpu_max_ext_state_size);
}
