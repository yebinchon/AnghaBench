
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int DEBUG_EVENT ;


 int GDB_WAITFORDEBUGEVENT ;
 int getresult (char*,int ,int *,int *) ;
 int putdword (char*,int ,int ) ;
 scalar_t__ s ;

__attribute__((used)) static int
wait_for_debug_event (DEBUG_EVENT * ev, DWORD ms)
{
  if (s < 0)
    return 1;
  putdword ("WaitForDebugEvent ms", GDB_WAITFORDEBUGEVENT, ms);
  return getresult ("WaitForDebugEvent event", GDB_WAITFORDEBUGEVENT, ev, ((void*)0));
}
