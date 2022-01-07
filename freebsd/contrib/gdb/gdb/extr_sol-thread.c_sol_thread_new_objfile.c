
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ td_err_e ;
struct objfile {int dummy; } ;


 scalar_t__ TD_NOLIBTHREAD ;
 scalar_t__ TD_OK ;
 int main_ph ;
 int main_ta ;
 scalar_t__ p_td_init () ;
 scalar_t__ p_td_ta_new (int *,int *) ;
 int procfs_suppress_run ;
 int sol_thread_active ;
 int target_new_objfile_chain (struct objfile*) ;
 int td_err_string (scalar_t__) ;
 int warning (char*,int ) ;

void
sol_thread_new_objfile (struct objfile *objfile)
{
  td_err_e val;

  if (!objfile)
    {
      sol_thread_active = 0;
      goto quit;
    }


  if (!procfs_suppress_run)
    goto quit;





  val = p_td_init ();
  if (val != TD_OK)
    {
      warning ("sol_thread_new_objfile: td_init: %s", td_err_string (val));
      goto quit;
    }

  val = p_td_ta_new (&main_ph, &main_ta);
  if (val == TD_NOLIBTHREAD)
    goto quit;
  else if (val != TD_OK)
    {
      warning ("sol_thread_new_objfile: td_ta_new: %s", td_err_string (val));
      goto quit;
    }

  sol_thread_active = 1;
quit:

  if (target_new_objfile_chain)
    target_new_objfile_chain (objfile);
}
