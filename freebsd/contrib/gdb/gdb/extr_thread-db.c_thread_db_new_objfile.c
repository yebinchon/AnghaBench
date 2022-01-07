
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int td_err_e ;
struct objfile {int dummy; } ;
struct TYPE_7__ {scalar_t__ pid; } ;
struct TYPE_6__ {char* dli_fname; } ;
typedef TYPE_1__ Dl_info ;


 scalar_t__ GET_PID (int ) ;
 char* LIBTHREAD_DB_SO ;


 scalar_t__ dladdr (int (*) (TYPE_2__*,int *),TYPE_1__*) ;
 int enable_thread_event_reporting () ;
 int gdb_assert (int) ;
 int inferior_ptid ;
 int keep_thread_db ;
 int printf_unfiltered (char*,...) ;
 TYPE_2__ proc_handle ;
 int push_target (int *) ;
 struct objfile* symfile_objfile ;
 int target_has_execution ;
 int target_new_objfile_chain (struct objfile*) ;
 int td_ta_new_p (TYPE_2__*,int *) ;
 int thread_agent ;
 int thread_db_err_str (int) ;
 int thread_db_find_new_threads () ;
 int thread_db_ops ;
 int unpush_target (int *) ;
 int using_thread_db ;
 int warning (char*,int ) ;

__attribute__((used)) static void
thread_db_new_objfile (struct objfile *objfile)
{
  td_err_e err;






  {
    static int dejavu;
    if (!dejavu)
      {
 Dl_info info;
 const char *library = ((void*)0);

 if (dladdr ((*td_ta_new_p), &info) != 0)
   library = info.dli_fname;

 if (library == ((void*)0))

   library = LIBTHREAD_DB_SO;
 printf_unfiltered ("Using host libthread_db library \"%s\".\n",
      library);
 dejavu = 1;
      }
  }



  if (objfile == ((void*)0) || !target_has_execution)
    {


      if (using_thread_db)
 {
   gdb_assert (proc_handle.pid == 0);
   unpush_target (&thread_db_ops);
   using_thread_db = 0;
 }

      keep_thread_db = 0;

      goto quit;
    }

  if (using_thread_db)


    goto quit;




  proc_handle.pid = GET_PID (inferior_ptid);


  err = td_ta_new_p (&proc_handle, &thread_agent);
  switch (err)
    {
    case 129:

      break;

    case 128:
      printf_unfiltered ("[Thread debugging using libthread_db enabled]\n");


      push_target (&thread_db_ops);
      using_thread_db = 1;







      if (objfile == symfile_objfile)
 {
   gdb_assert (proc_handle.pid == 0);
   keep_thread_db = 1;
 }




      if (proc_handle.pid != 0)
 {
   enable_thread_event_reporting ();
   thread_db_find_new_threads ();
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
