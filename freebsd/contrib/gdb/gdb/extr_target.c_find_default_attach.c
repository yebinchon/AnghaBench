
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int (* to_attach ) (char*,int) ;} ;


 struct target_ops* find_default_run_target (char*) ;
 int stub1 (char*,int) ;

void
find_default_attach (char *args, int from_tty)
{
  struct target_ops *t;

  t = find_default_run_target ("attach");
  (t->to_attach) (args, from_tty);
  return;
}
