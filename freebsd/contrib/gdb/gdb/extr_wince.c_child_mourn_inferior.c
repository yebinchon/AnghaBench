
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CeRapiUninit () ;
 int DBG_CONTINUE ;
 int child_continue (int ,int) ;
 int child_ops ;
 scalar_t__ connection_initialized ;
 int generic_mourn_inferior () ;
 int stop_stub () ;
 int unpush_target (int *) ;

__attribute__((used)) static void
child_mourn_inferior (void)
{
  (void) child_continue (DBG_CONTINUE, -1);
  unpush_target (&child_ops);
  stop_stub ();
  CeRapiUninit ();
  connection_initialized = 0;
  generic_mourn_inferior ();
}
