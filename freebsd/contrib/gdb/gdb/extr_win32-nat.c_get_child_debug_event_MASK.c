#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_info ;
struct TYPE_14__ {int related_pid; int /*<<< orphan*/  integer; } ;
struct target_waitstatus {TYPE_6__ value; int /*<<< orphan*/  kind; } ;
struct TYPE_12__ {int /*<<< orphan*/  hFile; } ;
struct TYPE_11__ {int /*<<< orphan*/  dwExitCode; } ;
struct TYPE_10__ {int /*<<< orphan*/  hThread; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hFile; } ;
struct TYPE_9__ {int /*<<< orphan*/  hThread; } ;
struct TYPE_13__ {TYPE_4__ LoadDll; TYPE_3__ ExitProcess; TYPE_2__ CreateProcessInfo; TYPE_1__ CreateThread; } ;
struct TYPE_15__ {int dwDebugEventCode; int dwThreadId; int /*<<< orphan*/  dwProcessId; TYPE_5__ u; } ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CREATE_PROCESS_DEBUG_EVENT 135 
#define  CREATE_THREAD_DEBUG_EVENT 134 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DBG_CONTINUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
#define  EXCEPTION_DEBUG_EVENT 133 
#define  EXIT_PROCESS_DEBUG_EVENT 132 
#define  EXIT_THREAD_DEBUG_EVENT 131 
#define  LOAD_DLL_DEBUG_EVENT 130 
#define  OUTPUT_DEBUG_STRING_EVENT 129 
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
 int /*<<< orphan*/  TARGET_SIGNAL_0 ; 
 int /*<<< orphan*/  TARGET_WAITKIND_EXITED ; 
 int /*<<< orphan*/  TARGET_WAITKIND_LOADED ; 
 int /*<<< orphan*/  TARGET_WAITKIND_SPURIOUS ; 
 int /*<<< orphan*/  TRUE ; 
#define  UNLOAD_DLL_DEBUG_EVENT 128 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  attach_flag ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_7__ current_event ; 
 int /*<<< orphan*/  current_process_handle ; 
 int /*<<< orphan*/  current_thread ; 
 int /*<<< orphan*/  event_count ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct target_waitstatus*) ; 
 int /*<<< orphan*/  handle_load_dll ; 
 int /*<<< orphan*/  FUNC10 (struct target_waitstatus*) ; 
 int /*<<< orphan*/  handle_unload_dll ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  info_verbose ; 
 int /*<<< orphan*/  last_sig ; 
 int main_thread_id ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int saw_create ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17 (int pid, struct target_waitstatus *ourstatus)
{
  BOOL debug_event;
  DWORD continue_status, event_code;
  thread_info *th;
  static thread_info dummy_thread_info;
  int retval = 0;

  last_sig = TARGET_SIGNAL_0;

  if (!(debug_event = FUNC3 (&current_event, 1000)))
    goto out;

  event_count++;
  continue_status = DBG_CONTINUE;

  event_code = current_event.dwDebugEventCode;
  ourstatus->kind = TARGET_WAITKIND_SPURIOUS;
  th = NULL;

  switch (event_code)
    {
    case CREATE_THREAD_DEBUG_EVENT:
      FUNC2 (("gdb: kernel event for pid=%d tid=%x code=%s)\n",
		     (unsigned) current_event.dwProcessId,
		     (unsigned) current_event.dwThreadId,
		     "CREATE_THREAD_DEBUG_EVENT"));
      if (saw_create != 1)
	{
	  if (!saw_create && attach_flag)
	    {
	      /* Kludge around a Windows bug where first event is a create
		 thread event.  Caused when attached process does not have
		 a main thread. */
	      retval = ourstatus->value.related_pid = FUNC8 ();
	      saw_create++;
	    }
	  break;
	}
      /* Record the existence of this thread */
      th = FUNC5 (current_event.dwThreadId,
			     current_event.u.CreateThread.hThread);
      if (info_verbose)
	FUNC12 ("[New %s]\n",
			   FUNC15 (
			     FUNC11 (current_event.dwThreadId)));
      retval = current_event.dwThreadId;
      break;

    case EXIT_THREAD_DEBUG_EVENT:
      FUNC2 (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
		     (unsigned) current_event.dwProcessId,
		     (unsigned) current_event.dwThreadId,
		     "EXIT_THREAD_DEBUG_EVENT"));
      if (current_event.dwThreadId != main_thread_id)
	{
	  FUNC7 (current_event.dwThreadId);
	  th = &dummy_thread_info;
	}
      break;

    case CREATE_PROCESS_DEBUG_EVENT:
      FUNC2 (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
		     (unsigned) current_event.dwProcessId,
		     (unsigned) current_event.dwThreadId,
		     "CREATE_PROCESS_DEBUG_EVENT"));
      FUNC1 (current_event.u.CreateProcessInfo.hFile);
      if (++saw_create != 1)
	{
	  FUNC1 (current_event.u.CreateProcessInfo.hProcess);
	  break;
	}

      current_process_handle = current_event.u.CreateProcessInfo.hProcess;
      if (main_thread_id)
	FUNC7 (main_thread_id);
      main_thread_id = current_event.dwThreadId;
      /* Add the main thread */
      th = FUNC5 (main_thread_id,
			     current_event.u.CreateProcessInfo.hThread);
      retval = ourstatus->value.related_pid = current_event.dwThreadId;
      break;

    case EXIT_PROCESS_DEBUG_EVENT:
      FUNC2 (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
		     (unsigned) current_event.dwProcessId,
		     (unsigned) current_event.dwThreadId,
		     "EXIT_PROCESS_DEBUG_EVENT"));
      if (saw_create != 1)
	break;
      ourstatus->kind = TARGET_WAITKIND_EXITED;
      ourstatus->value.integer = current_event.u.ExitProcess.dwExitCode;
      FUNC1 (current_process_handle);
      retval = main_thread_id;
      break;

    case LOAD_DLL_DEBUG_EVENT:
      FUNC2 (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
		     (unsigned) current_event.dwProcessId,
		     (unsigned) current_event.dwThreadId,
		     "LOAD_DLL_DEBUG_EVENT"));
      FUNC1 (current_event.u.LoadDll.hFile);
      if (saw_create != 1)
	break;
      FUNC4 (handle_load_dll, NULL, (char *) "", RETURN_MASK_ALL);
      FUNC14 ();	/* mark all regs invalid */
      ourstatus->kind = TARGET_WAITKIND_LOADED;
      ourstatus->value.integer = 0;
      retval = main_thread_id;
      FUNC13 ();
      break;

    case UNLOAD_DLL_DEBUG_EVENT:
      FUNC2 (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
		     (unsigned) current_event.dwProcessId,
		     (unsigned) current_event.dwThreadId,
		     "UNLOAD_DLL_DEBUG_EVENT"));
      if (saw_create != 1)
	break;
      FUNC4 (handle_unload_dll, NULL, (char *) "", RETURN_MASK_ALL);
      FUNC14 ();	/* mark all regs invalid */
      /* ourstatus->kind = TARGET_WAITKIND_UNLOADED;
	 does not exist yet. */
      break;

    case EXCEPTION_DEBUG_EVENT:
      FUNC2 (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
		     (unsigned) current_event.dwProcessId,
		     (unsigned) current_event.dwThreadId,
		     "EXCEPTION_DEBUG_EVENT"));
      if (saw_create != 1)
	break;
      if (FUNC9 (ourstatus))
	retval = current_event.dwThreadId;
      break;

    case OUTPUT_DEBUG_STRING_EVENT:	/* message from the kernel */
      FUNC2 (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
		     (unsigned) current_event.dwProcessId,
		     (unsigned) current_event.dwThreadId,
		     "OUTPUT_DEBUG_STRING_EVENT"));
      if (saw_create != 1)
	break;
      if (FUNC10 (ourstatus))
	retval = main_thread_id;
      break;

    default:
      if (saw_create != 1)
	break;
      FUNC12 ("gdb: kernel event for pid=%ld tid=%ld\n",
			 (DWORD) current_event.dwProcessId,
			 (DWORD) current_event.dwThreadId);
      FUNC12 ("                 unknown event code %ld\n",
			 current_event.dwDebugEventCode);
      break;
    }

  if (!retval || saw_create != 1)
    FUNC0 (FUNC6 (continue_status, -1));
  else
    {
      inferior_ptid = FUNC11 (retval);
      current_thread = *(th ?: FUNC16 (current_event.dwThreadId, TRUE));
    }

out:
  return retval;
}