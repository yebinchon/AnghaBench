
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_wince_result ;
typedef int DWORD ;


 int GDB_CONTINUEDEBUGEVENT ;
 int getresult (char*,int ,int *,int *) ;
 int putdword (char*,int ,int ) ;
 scalar_t__ s ;

__attribute__((used)) static int
continue_debug_event (DWORD pid, DWORD tid, DWORD status)
{
  gdb_wince_result res;
  if (s < 0)
    return 0;
  putdword ("ContinueDebugEvent pid", GDB_CONTINUEDEBUGEVENT, pid);
  putdword ("ContinueDebugEvent tid", GDB_CONTINUEDEBUGEVENT, tid);
  putdword ("ContinueDebugEvent status", GDB_CONTINUEDEBUGEVENT, status);
  return getresult ("ContinueDebugEvent result", GDB_CONTINUEDEBUGEVENT, &res, ((void*)0));
}
