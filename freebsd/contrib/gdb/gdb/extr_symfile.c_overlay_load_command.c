
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int stub1 (int *) ;
 int target_overlay_update (int *) ;

__attribute__((used)) static void
overlay_load_command (char *args, int from_tty)
{
  if (target_overlay_update)
    (*target_overlay_update) (((void*)0));
  else
    error ("This target does not know how to read its overlay state.");
}
