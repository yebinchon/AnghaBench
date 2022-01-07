
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int platform_t ;


 int fdt_immr_pa ;
 int mv_a38x_platform_devmap_init (int ) ;

__attribute__((used)) static int
mv_axp_platform_devmap_init(platform_t plate)
{
 vm_paddr_t cur_immr_pa;






 __asm __volatile("mrc p15, 4, %0, c15, c0, 0" : "=r" (cur_immr_pa));
 cur_immr_pa = (cur_immr_pa << 13) & 0xff000000;
 if (cur_immr_pa != 0)
  fdt_immr_pa = cur_immr_pa;

 mv_a38x_platform_devmap_init(plate);

 return (0);
}
