#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int td_err_e ;
struct objfile {int dummy; } ;
struct TYPE_3__ {scalar_t__ pid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  TD_NOLIBTHREAD 129 
#define  TD_OK 128 
 int /*<<< orphan*/  child_suppress_run ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ fbsd_thread_active ; 
 int /*<<< orphan*/  fbsd_thread_core ; 
 int /*<<< orphan*/  fbsd_thread_ops ; 
 int fbsd_thread_present ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 TYPE_1__ proc_handle ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * thread_agent ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (struct objfile *objfile)
{
  td_err_e err;

  if (objfile == NULL)
    {
      /* All symbols have been discarded.  If the thread_db target is
         active, deactivate it now.  */
      if (fbsd_thread_active)
        {
          FUNC2 (proc_handle.pid == 0);
          fbsd_thread_active = 0;
        }

      goto quit;
    }

  if (!child_suppress_run)
    goto quit;

  /* Nothing to do.  The thread library was already detected and the
     target vector was already activated.  */
  if (fbsd_thread_active)
    goto quit;

  /* Initialize the structure that identifies the child process.  Note
     that at this point there is no guarantee that we actually have a
     child process.  */
  proc_handle.pid = FUNC0 (inferior_ptid);
  
  /* Now attempt to open a connection to the thread library.  */
  err = FUNC6 (&proc_handle, &thread_agent);
  switch (err)
    {
    case TD_NOLIBTHREAD:
      /* No thread library was detected.  */
      break;

    case TD_OK:
      /* The thread library was detected.  Activate the thread_db target.  */
      fbsd_thread_present = 1;

      /* We can only poke around if there actually is a child process.
         If there is no child process alive, postpone the steps below
         until one has been created.  */
      if (fbsd_thread_core == 0 && proc_handle.pid != 0)
        {
          FUNC3(&fbsd_thread_ops);
          FUNC1();
        }
      else
        {
          FUNC5(thread_agent);
          thread_agent = NULL;
        }
      break;

    default:
      FUNC8 ("Cannot initialize thread debugging library: %s",
               FUNC7 (err));
      break;
    }

 quit:
  if (&target_new_objfile_chain)
    FUNC4 (objfile);
}