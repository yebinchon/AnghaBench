
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef scalar_t__ gdb_wince_result ;
typedef int DWORD ;


 scalar_t__ ContinueDebugEvent (int ,int ,int ) ;
 int GDB_CONTINUEDEBUGEVENT ;
 int getdword (char*,int,int ) ;
 int putresult (char*,scalar_t__,int,int ,scalar_t__*,int) ;

__attribute__((used)) static void
continue_debug_event (int s)
{
  gdb_wince_result res;
  DWORD pid = getdword (L"ContinueDebugEvent pid", s, GDB_CONTINUEDEBUGEVENT);
  DWORD tid = getdword (L"ContinueDebugEvent tid", s, GDB_CONTINUEDEBUGEVENT);
  DWORD status = getdword (L"ContinueDebugEvent status", s, GDB_CONTINUEDEBUGEVENT);
  res = (gdb_wince_result) ContinueDebugEvent (pid, tid, status);
  putresult (L"ContinueDebugEvent result", res, s, GDB_CONTINUEDEBUGEVENT, &res, sizeof (res));
}
