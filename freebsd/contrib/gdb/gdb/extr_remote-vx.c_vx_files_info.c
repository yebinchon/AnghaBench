
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_unfiltered (char*,...) ;
 scalar_t__ target_has_fp ;
 int vx_host ;

__attribute__((used)) static void
vx_files_info (void)
{
  printf_unfiltered ("\tAttached to host `%s'", vx_host);
  printf_unfiltered (", which has %sfloating point", target_has_fp ? "" : "no ");
  printf_unfiltered (".\n");
}
