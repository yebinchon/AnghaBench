#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int td_err_e ;
struct objfile {int dummy; } ;
struct TYPE_7__ {scalar_t__ pid; } ;
struct TYPE_6__ {char* dli_fname; } ;
typedef  TYPE_1__ Dl_info ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* LIBTHREAD_DB_SO ; 
#define  TD_NOLIBTHREAD 129 
#define  TD_OK 128 
 scalar_t__ FUNC1 (int (*) (TYPE_2__*,int /*<<< orphan*/ *),TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int keep_thread_db ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_2__ proc_handle ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct objfile* symfile_objfile ; 
 int /*<<< orphan*/  target_has_execution ; 
 int /*<<< orphan*/  FUNC6 (struct objfile*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_agent ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  thread_db_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int using_thread_db ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (struct objfile *objfile)
{
  td_err_e err;

  /* First time through, report that libthread_db was successfuly
     loaded.  Can't print this in in thread_db_load as, at that stage,
     the interpreter and it's console haven't started.  The real
     problem here is that libthread_db is loaded too early - it should
     only be loaded when there is a program to debug.  */
  {
    static int dejavu;
    if (!dejavu)
      {
	Dl_info info;
	const char *library = NULL;
	/* Try dladdr.  */
	if (FUNC1 ((*td_ta_new_p), &info) != 0)
	  library = info.dli_fname;
	/* Try dlinfo?  */
	if (library == NULL)
	  /* Paranoid - don't let a NULL path slip through.  */
	  library = LIBTHREAD_DB_SO;
	FUNC4 ("Using host libthread_db library \"%s\".\n",
			   library);
	dejavu = 1;
      }
  }

  /* Don't attempt to use thread_db on targets which can not run
     (core files).  */
  if (objfile == NULL || !target_has_execution)
    {
      /* All symbols have been discarded.  If the thread_db target is
         active, deactivate it now.  */
      if (using_thread_db)
	{
	  FUNC3 (proc_handle.pid == 0);
	  FUNC10 (&thread_db_ops);
	  using_thread_db = 0;
	}

      keep_thread_db = 0;

      goto quit;
    }

  if (using_thread_db)
    /* Nothing to do.  The thread library was already detected and the
       target vector was already activated.  */
    goto quit;

  /* Initialize the structure that identifies the child process.  Note
     that at this point there is no guarantee that we actually have a
     child process.  */
  proc_handle.pid = FUNC0 (inferior_ptid);

  /* Now attempt to open a connection to the thread library.  */
  err = FUNC7 (&proc_handle, &thread_agent);
  switch (err)
    {
    case TD_NOLIBTHREAD:
      /* No thread library was detected.  */
      break;

    case TD_OK:
      FUNC4 ("[Thread debugging using libthread_db enabled]\n");

      /* The thread library was detected.  Activate the thread_db target.  */
      FUNC5 (&thread_db_ops);
      using_thread_db = 1;

      /* If the thread library was detected in the main symbol file
         itself, we assume that the program was statically linked
         against the thread library and well have to keep this
         module's target vector activated until forever...  Well, at
         least until all symbols have been discarded anyway (see
         above).  */
      if (objfile == symfile_objfile)
	{
	  FUNC3 (proc_handle.pid == 0);
	  keep_thread_db = 1;
	}

      /* We can only poke around if there actually is a child process.
         If there is no child process alive, postpone the steps below
         until one has been created.  */
      if (proc_handle.pid != 0)
	{
	  FUNC2 ();
	  FUNC9 ();
	}
      break;

    default:
      FUNC11 ("Cannot initialize thread debugging library: %s",
	       FUNC8 (err));
      break;
    }

quit:
  if (&target_new_objfile_chain)
    FUNC6 (objfile);
}