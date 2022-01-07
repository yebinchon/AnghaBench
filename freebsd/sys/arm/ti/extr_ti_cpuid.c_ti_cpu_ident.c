
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int am335x_get_revision () ;
 int omap4_get_revision () ;
 int panic (char*) ;
 int ti_chip () ;
 int ti_soc_is_supported () ;

__attribute__((used)) static void
ti_cpu_ident(void *dummy)
{
 if (!ti_soc_is_supported())
  return;
 switch(ti_chip()) {
 case 128:
  omap4_get_revision();
  break;
 case 129:
  am335x_get_revision();
  break;
 default:
  panic("Unknown chip type, fixme!\n");
 }
}
