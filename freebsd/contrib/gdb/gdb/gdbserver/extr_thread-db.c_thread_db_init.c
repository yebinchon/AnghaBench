
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inferior_list_entry {int id; } ;
struct TYPE_3__ {int pid; } ;




 scalar_t__ current_inferior ;
 TYPE_1__ proc_handle ;
 int td_ta_new (TYPE_1__*,int *) ;
 int thread_agent ;
 int thread_db_enable_reporting () ;
 int thread_db_find_new_threads () ;
 int warning (char*) ;

int
thread_db_init ()
{
  int err;

  proc_handle.pid = ((struct inferior_list_entry *)current_inferior)->id;

  err = td_ta_new (&proc_handle, &thread_agent);
  switch (err)
    {
    case 129:

      return 0;

    case 128:


      if (thread_db_enable_reporting () == 0)
 return 0;
      thread_db_find_new_threads ();
      return 1;

    default:
      warning ("error initializing thread_db library.");
    }

  return 0;
}
