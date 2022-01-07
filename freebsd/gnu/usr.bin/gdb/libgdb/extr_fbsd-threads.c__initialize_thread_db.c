
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int add_cmd (char*,int ,int ,char*,int *) ;
 int add_target (int *) ;
 int child_suppress_run ;
 int class_run ;
 int core_ops ;
 int dlerror () ;
 int fbsd_core_ops ;
 int fbsd_thread_new_objfile ;
 int fbsd_thread_ops ;
 int fbsd_thread_signal_cmd ;
 int fbsd_thread_tsd_cmd ;
 scalar_t__ fbsdcoreops_suppress_target ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stderr ;
 int init_fbsd_core_ops () ;
 int init_fbsd_thread_ops () ;
 int memcpy (int *,int *,int) ;
 int orig_core_ops ;
 int target_new_objfile_chain ;
 int target_new_objfile_hook ;
 int thread_cmd_list ;
 scalar_t__ thread_db_load () ;

void
_initialize_thread_db (void)
{

  if (fbsdcoreops_suppress_target)
    return;
  init_fbsd_thread_ops ();
  init_fbsd_core_ops ();

  if (thread_db_load ())
    {
      add_target (&fbsd_thread_ops);


      add_cmd ("tsd", class_run, fbsd_thread_tsd_cmd,
            "Show the thread-specific data keys and destructors "
            "for the process.\n",
           &thread_cmd_list);

      add_cmd ("signal", class_run, fbsd_thread_signal_cmd,
            "Show the thread signal info.\n",
           &thread_cmd_list);

      memcpy (&orig_core_ops, &core_ops, sizeof (struct target_ops));
      memcpy (&core_ops, &fbsd_core_ops, sizeof (struct target_ops));
      add_target (&core_ops);


      target_new_objfile_chain = target_new_objfile_hook;
      target_new_objfile_hook = fbsd_thread_new_objfile;

      child_suppress_run = 1;
    }
  else
    {
      fprintf_unfiltered (gdb_stderr,
        "[GDB will not be able to debug user-mode threads: %s]\n", dlerror());


      add_target (&core_ops);
    }
}
