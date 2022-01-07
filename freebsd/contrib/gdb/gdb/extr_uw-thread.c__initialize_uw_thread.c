
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_target (int *) ;
 int init_uw_thread_ops () ;
 int procfs_suppress_run ;
 int target_new_objfile_chain ;
 int target_new_objfile_hook ;
 int uw_thread_new_objfile ;
 int uw_thread_ops ;

void
_initialize_uw_thread (void)
{
  init_uw_thread_ops ();
  add_target (&uw_thread_ops);

  procfs_suppress_run = 1;


  target_new_objfile_chain = target_new_objfile_hook;
  target_new_objfile_hook = uw_thread_new_objfile;
}
