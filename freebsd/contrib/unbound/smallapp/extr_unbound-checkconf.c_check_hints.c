
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_hints {int dummy; } ;
struct config_file {int dummy; } ;


 int fatal_exit (char*) ;
 int hints_apply_cfg (struct iter_hints*,struct config_file*) ;
 struct iter_hints* hints_create () ;
 int hints_delete (struct iter_hints*) ;

__attribute__((used)) static void
check_hints(struct config_file* cfg)
{
 struct iter_hints* hints = hints_create();
 if(!hints || !hints_apply_cfg(hints, cfg)) {
  fatal_exit("Could not set root or stub hints");
 }
 hints_delete(hints);
}
