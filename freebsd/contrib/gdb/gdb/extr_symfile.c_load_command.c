
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_exec_file (int) ;
 int overlay_cache_invalid ;
 int target_load (char*,int) ;

__attribute__((used)) static void
load_command (char *arg, int from_tty)
{
  if (arg == ((void*)0))
    arg = get_exec_file (1);
  target_load (arg, from_tty);



  overlay_cache_invalid = 1;
}
