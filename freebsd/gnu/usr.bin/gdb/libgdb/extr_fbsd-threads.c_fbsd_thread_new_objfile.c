
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int td_err_e ;
struct objfile {int dummy; } ;
struct TYPE_3__ {scalar_t__ pid; } ;


 scalar_t__ GET_PID (int ) ;


 int child_suppress_run ;
 int fbsd_thread_activate () ;
 scalar_t__ fbsd_thread_active ;
 int fbsd_thread_core ;
 int fbsd_thread_ops ;
 int fbsd_thread_present ;
 int gdb_assert (int) ;
 int inferior_ptid ;
 TYPE_1__ proc_handle ;
 int push_target (int *) ;
 int target_new_objfile_chain (struct objfile*) ;
 int td_ta_delete_p (int *) ;
 int td_ta_new_p (TYPE_1__*,int **) ;
 int * thread_agent ;
 int thread_db_err_str (int) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
fbsd_thread_new_objfile (struct objfile *objfile)
{
  td_err_e err;

  if (objfile == ((void*)0))
    {


      if (fbsd_thread_active)
        {
          gdb_assert (proc_handle.pid == 0);
          fbsd_thread_active = 0;
        }

      goto quit;
    }

  if (!child_suppress_run)
    goto quit;



  if (fbsd_thread_active)
    goto quit;




  proc_handle.pid = GET_PID (inferior_ptid);


  err = td_ta_new_p (&proc_handle, &thread_agent);
  switch (err)
    {
    case 129:

      break;

    case 128:

      fbsd_thread_present = 1;




      if (fbsd_thread_core == 0 && proc_handle.pid != 0)
        {
          push_target(&fbsd_thread_ops);
          fbsd_thread_activate();
        }
      else
        {
          td_ta_delete_p(thread_agent);
          thread_agent = ((void*)0);
        }
      break;

    default:
      warning ("Cannot initialize thread debugging library: %s",
               thread_db_err_str (err));
      break;
    }

 quit:
  if (target_new_objfile_chain)
    target_new_objfile_chain (objfile);
}
