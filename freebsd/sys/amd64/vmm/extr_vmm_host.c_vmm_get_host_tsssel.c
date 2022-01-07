
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int GPROC0_SEL ;
 int GSEL (int ,int ) ;
 int SEL_KPL ;

uint64_t
vmm_get_host_tsssel(void)
{

 return (GSEL(GPROC0_SEL, SEL_KPL));
}
