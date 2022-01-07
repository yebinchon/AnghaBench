
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int thread_info ;
struct TYPE_14__ {int related_pid; int integer; } ;
struct target_waitstatus {TYPE_6__ value; int kind; } ;
struct TYPE_12__ {int hFile; } ;
struct TYPE_11__ {int dwExitCode; } ;
struct TYPE_10__ {int hThread; int hProcess; int hFile; } ;
struct TYPE_9__ {int hThread; } ;
struct TYPE_13__ {TYPE_4__ LoadDll; TYPE_3__ ExitProcess; TYPE_2__ CreateProcessInfo; TYPE_1__ CreateThread; } ;
struct TYPE_15__ {int dwDebugEventCode; int dwThreadId; int dwProcessId; TYPE_5__ u; } ;
typedef int DWORD ;
typedef int BOOL ;


 int CHECK (int ) ;


 int CloseHandle (int ) ;
 int DBG_CONTINUE ;
 int DEBUG_EVENTS (char*) ;





 int RETURN_MASK_ALL ;
 int TARGET_SIGNAL_0 ;
 int TARGET_WAITKIND_EXITED ;
 int TARGET_WAITKIND_LOADED ;
 int TARGET_WAITKIND_SPURIOUS ;
 int TRUE ;

 int WaitForDebugEvent (TYPE_7__*,int) ;
 int attach_flag ;
 int catch_errors (int ,int *,char*,int ) ;
 int * child_add_thread (int,int ) ;
 int child_continue (int,int) ;
 int child_delete_thread (int) ;
 TYPE_7__ current_event ;
 int current_process_handle ;
 int current_thread ;
 int event_count ;
 int fake_create_process () ;
 int handle_exception (struct target_waitstatus*) ;
 int handle_load_dll ;
 int handle_output_debug_string (struct target_waitstatus*) ;
 int handle_unload_dll ;
 int inferior_ptid ;
 int info_verbose ;
 int last_sig ;
 int main_thread_id ;
 int pid_to_ptid (int) ;
 int printf_unfiltered (char*,int,...) ;
 int re_enable_breakpoints_in_shlibs () ;
 int registers_changed () ;
 int saw_create ;
 int target_pid_to_str (int ) ;
 int thread_rec (int,int ) ;

__attribute__((used)) static int
get_child_debug_event (int pid, struct target_waitstatus *ourstatus)
{
  BOOL debug_event;
  DWORD continue_status, event_code;
  thread_info *th;
  static thread_info dummy_thread_info;
  int retval = 0;

  last_sig = TARGET_SIGNAL_0;

  if (!(debug_event = WaitForDebugEvent (&current_event, 1000)))
    goto out;

  event_count++;
  continue_status = DBG_CONTINUE;

  event_code = current_event.dwDebugEventCode;
  ourstatus->kind = TARGET_WAITKIND_SPURIOUS;
  th = ((void*)0);

  switch (event_code)
    {
    case 134:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%x code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "CREATE_THREAD_DEBUG_EVENT"));
      if (saw_create != 1)
 {
   if (!saw_create && attach_flag)
     {



       retval = ourstatus->value.related_pid = fake_create_process ();
       saw_create++;
     }
   break;
 }

      th = child_add_thread (current_event.dwThreadId,
        current_event.u.CreateThread.hThread);
      if (info_verbose)
 printf_unfiltered ("[New %s]\n",
      target_pid_to_str (
        pid_to_ptid (current_event.dwThreadId)));
      retval = current_event.dwThreadId;
      break;

    case 131:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "EXIT_THREAD_DEBUG_EVENT"));
      if (current_event.dwThreadId != main_thread_id)
 {
   child_delete_thread (current_event.dwThreadId);
   th = &dummy_thread_info;
 }
      break;

    case 135:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "CREATE_PROCESS_DEBUG_EVENT"));
      CloseHandle (current_event.u.CreateProcessInfo.hFile);
      if (++saw_create != 1)
 {
   CloseHandle (current_event.u.CreateProcessInfo.hProcess);
   break;
 }

      current_process_handle = current_event.u.CreateProcessInfo.hProcess;
      if (main_thread_id)
 child_delete_thread (main_thread_id);
      main_thread_id = current_event.dwThreadId;

      th = child_add_thread (main_thread_id,
        current_event.u.CreateProcessInfo.hThread);
      retval = ourstatus->value.related_pid = current_event.dwThreadId;
      break;

    case 132:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "EXIT_PROCESS_DEBUG_EVENT"));
      if (saw_create != 1)
 break;
      ourstatus->kind = TARGET_WAITKIND_EXITED;
      ourstatus->value.integer = current_event.u.ExitProcess.dwExitCode;
      CloseHandle (current_process_handle);
      retval = main_thread_id;
      break;

    case 130:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "LOAD_DLL_DEBUG_EVENT"));
      CloseHandle (current_event.u.LoadDll.hFile);
      if (saw_create != 1)
 break;
      catch_errors (handle_load_dll, ((void*)0), (char *) "", RETURN_MASK_ALL);
      registers_changed ();
      ourstatus->kind = TARGET_WAITKIND_LOADED;
      ourstatus->value.integer = 0;
      retval = main_thread_id;
      re_enable_breakpoints_in_shlibs ();
      break;

    case 128:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "UNLOAD_DLL_DEBUG_EVENT"));
      if (saw_create != 1)
 break;
      catch_errors (handle_unload_dll, ((void*)0), (char *) "", RETURN_MASK_ALL);
      registers_changed ();


      break;

    case 133:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "EXCEPTION_DEBUG_EVENT"));
      if (saw_create != 1)
 break;
      if (handle_exception (ourstatus))
 retval = current_event.dwThreadId;
      break;

    case 129:
      DEBUG_EVENTS (("gdb: kernel event for pid=%d tid=%d code=%s)\n",
       (unsigned) current_event.dwProcessId,
       (unsigned) current_event.dwThreadId,
       "OUTPUT_DEBUG_STRING_EVENT"));
      if (saw_create != 1)
 break;
      if (handle_output_debug_string (ourstatus))
 retval = main_thread_id;
      break;

    default:
      if (saw_create != 1)
 break;
      printf_unfiltered ("gdb: kernel event for pid=%ld tid=%ld\n",
    (DWORD) current_event.dwProcessId,
    (DWORD) current_event.dwThreadId);
      printf_unfiltered ("                 unknown event code %ld\n",
    current_event.dwDebugEventCode);
      break;
    }

  if (!retval || saw_create != 1)
    CHECK (child_continue (continue_status, -1));
  else
    {
      inferior_ptid = pid_to_ptid (retval);
      current_thread = th ?: thread_rec (current_event.dwThreadId, TRUE);
    }

out:
  return retval;
}
