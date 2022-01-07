
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int MV_BASE ;
 scalar_t__ fdt_immr_addr (int ) ;

__attribute__((used)) static int
mv_platform_probe_and_attach(platform_t plate)
{

 if (fdt_immr_addr(MV_BASE) != 0)
  while (1);
 return (0);
}
