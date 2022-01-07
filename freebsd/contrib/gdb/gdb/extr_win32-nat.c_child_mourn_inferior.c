
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_CONTINUE ;
 int child_continue (int ,int) ;
 int child_ops ;
 int generic_mourn_inferior () ;
 int i386_cleanup_dregs () ;
 int unpush_target (int *) ;

__attribute__((used)) static void
child_mourn_inferior (void)
{
  (void) child_continue (DBG_CONTINUE, -1);
  i386_cleanup_dregs();
  unpush_target (&child_ops);
  generic_mourn_inferior ();
}
