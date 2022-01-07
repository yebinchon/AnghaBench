
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gdb_wince_result ;
typedef int ev ;
struct TYPE_5__ {scalar_t__ dwDebugEventCode; int dwThreadId; int dwProcessId; } ;
typedef int DWORD ;
typedef TYPE_1__ DEBUG_EVENT ;


 int ContinueDebugEvent (int ,int ,int ) ;
 int DBG_CONTINUE ;
 int GDB_WAITFORDEBUGEVENT ;
 scalar_t__ OUTPUT_DEBUG_STRING_EVENT ;
 int WaitForDebugEvent (TYPE_1__*,int ) ;
 int getdword (char*,int,int ) ;
 int putresult (char*,int ,int,int ,TYPE_1__*,int) ;
 int skip_message (TYPE_1__*) ;

__attribute__((used)) static void
wait_for_debug_event (int s)
{
  DWORD ms = getdword (L"WaitForDebugEvent ms", s, GDB_WAITFORDEBUGEVENT);
  gdb_wince_result res;
  DEBUG_EVENT ev;
  static int skip_next = 0;

  for (;;)
    {
      res = WaitForDebugEvent (&ev, ms);

      if (ev.dwDebugEventCode == OUTPUT_DEBUG_STRING_EVENT)
 {
   if (skip_next)
     {
       skip_next--;
       goto ignore;
     }
   if (skip_next = skip_message (&ev))
     goto ignore;
 }

      putresult (L"WaitForDebugEvent event", res, s, GDB_WAITFORDEBUGEVENT,
   &ev, sizeof (ev));
      break;

    ignore:
      ContinueDebugEvent (ev.dwProcessId, ev.dwThreadId, DBG_CONTINUE);
    }

  return;
}
