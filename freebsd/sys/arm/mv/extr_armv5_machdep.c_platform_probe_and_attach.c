
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MV_BASE ;
 scalar_t__ fdt_immr_addr (int ) ;

void
platform_probe_and_attach(void)
{

 if (fdt_immr_addr(MV_BASE) != 0)
  while (1);
}
