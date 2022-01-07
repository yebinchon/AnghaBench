
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int ofw_cpu_early_foreach (int ,int) ;
 int virt_start_ap ;

void
virt_mp_start_ap(platform_t plat)
{

 ofw_cpu_early_foreach(virt_start_ap, 1);
}
