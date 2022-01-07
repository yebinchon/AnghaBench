
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_load_dtb_overlays (int ) ;
 int ub_env_get (char*) ;

void
fdt_platform_load_overlays(void)
{

 fdt_load_dtb_overlays(ub_env_get("fdt_overlays"));
}
