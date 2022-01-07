
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int thread_info ;
struct TYPE_10__ {int integer; } ;
struct target_waitstatus {TYPE_3__ value; int kind; } ;
struct TYPE_11__ {int dwExitCode; } ;
struct TYPE_9__ {int hThread; int hProcess; } ;
struct TYPE_8__ {int hThread; } ;
struct TYPE_12__ {TYPE_4__ ExitProcess; TYPE_2__ CreateProcessInfo; TYPE_1__ CreateThread; } ;
struct TYPE_13__ {int dwDebugEventCode; int dwProcessId; int dwThreadId; TYPE_5__ u; } ;
typedef int DWORD ;
typedef int BOOL ;


 int CHECK (int ) ;


 int DBG_CONTINUE ;
 int DBG_EXCEPTION_NOT_HANDLED ;
 int DEBUG_EVENTS (char*) ;





 int PIDGET (int ) ;
 int RETURN_MASK_ALL ;
 int TARGET_WAITKIND_EXITED ;
 int TRUE ;

 int catch_errors (int ,int *,char*,int ) ;
 int * child_add_thread (int,int ) ;
 int child_continue (int,int) ;
 int child_delete_thread (int) ;
 int close_handle (int ) ;
 TYPE_6__ current_event ;
 int current_process_handle ;
 int current_thread ;
 int event_count ;
 int handle_exception (struct target_waitstatus*) ;
 int handle_load_dll ;
 int handle_output_debug_string (struct target_waitstatus*) ;
 int inferior_ptid ;
 int info_verbose ;
 int main_thread_id ;
 int pid_to_ptid (int) ;
 int printf_unfiltered (char*,int,...) ;
 int registers_changed () ;
 int target_pid_to_str (int) ;
 int this_thread ;
 int thread_rec (int,int ) ;
 int wait_for_debug_event (TYPE_6__*,int) ;

__attribute__((used)) static int
get_child_debug_event (int pid, struct target_waitstatus *ourstatus,
         DWORD target_event_code, int *retval)
{
  int breakout = 0;
  BOOL debug_event;
  DWORD continue_status, event_code;
  thread_info *th = ((void*)0);
  static thread_info dummy_thread_info;

  if (!(debug_event = wait_for_debug_event (&current_event, 1000)))
    {
      *retval = 0;
      goto out;
    }

  event_count++;
  continue_status = DBG_CONTINUE;
  *retval = 0;

  event_code = current_event.dwDebugEventCode;
  breakout = event_code == target_event_code;

  switch (event_code)
    {
    case 134:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%x code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "CREATE_THREAD_DEBUG_EVENT"));

      th = child_add_thread (current_event.dwThreadId,
        current_event.u.CreateThread.hThread);
      if (info_verbose)
 printf_unfiltered ("[New %s]\n",
      target_pid_to_str (current_event.dwThreadId));
      break;

    case 131:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "EXIT_THREAD_DEBUG_EVENT"));
      child_delete_thread (current_event.dwThreadId);
      th = &dummy_thread_info;
      break;

    case 135:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "CREATE_PROCESS_DEBUG_EVENT"));
      current_process_handle = current_event.u.CreateProcessInfo.hProcess;

      main_thread_id = current_event.dwThreadId;
      inferior_ptid = pid_to_ptid (main_thread_id);

      th = child_add_thread (PIDGET (inferior_ptid),
        current_event.u.CreateProcessInfo.hThread);
      break;

    case 132:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "EXIT_PROCESS_DEBUG_EVENT"));
      ourstatus->kind = TARGET_WAITKIND_EXITED;
      ourstatus->value.integer = current_event.u.ExitProcess.dwExitCode;
      close_handle (current_process_handle);
      *retval = current_event.dwProcessId;
      breakout = 1;
      break;

    case 130:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "LOAD_DLL_DEBUG_EVENT"));
      catch_errors (handle_load_dll, ((void*)0), (char *) "", RETURN_MASK_ALL);
      registers_changed ();
      break;

    case 128:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "UNLOAD_DLL_DEBUG_EVENT"));
      break;

    case 133:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "EXCEPTION_DEBUG_EVENT"));
      if (handle_exception (ourstatus))
 *retval = current_event.dwThreadId;
      else
 {
   continue_status = DBG_EXCEPTION_NOT_HANDLED;
   breakout = 0;
 }
      break;

    case 129:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "OUTPUT_DEBUG_STRING_EVENT"));
      handle_output_debug_string ( ourstatus);
      break;
    default:
      printf_unfiltered ("gdb: kernel event for pid=%d tid=%d\n",
    current_event.dwProcessId,
    current_event.dwThreadId);
      printf_unfiltered ("                 unknown event code %d\n",
    current_event.dwDebugEventCode);
      break;
    }

  if (breakout)
    this_thread = current_thread = th ?: thread_rec (current_event.dwThreadId, TRUE);
  else
    CHECK (child_continue (continue_status, -1));

out:
  return breakout;
}
