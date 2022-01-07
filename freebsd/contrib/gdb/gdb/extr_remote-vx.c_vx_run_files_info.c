
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIDGET (int ) ;
 int inferior_ptid ;
 int local_hex_string (int ) ;
 int printf_unfiltered (char*,...) ;
 int vx_running ;

__attribute__((used)) static void
vx_run_files_info (void)
{
  printf_unfiltered ("\tRunning %s VxWorks process %s",
       vx_running ? "child" : "attached",
       local_hex_string (PIDGET (inferior_ptid)));
  if (vx_running)
    printf_unfiltered (", function `%s'", vx_running);
  printf_unfiltered (".\n");
}
