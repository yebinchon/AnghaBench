
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_target (int *) ;
 int init_thread_db_ops () ;
 int target_new_objfile_chain ;
 int target_new_objfile_hook ;
 scalar_t__ thread_db_load () ;
 int thread_db_new_objfile ;
 int thread_db_ops ;

void
_initialize_thread_db (void)
{

  if (thread_db_load ())
    {
      init_thread_db_ops ();
      add_target (&thread_db_ops);


      target_new_objfile_chain = target_new_objfile_hook;
      target_new_objfile_hook = thread_db_new_objfile;
    }
}
