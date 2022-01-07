
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pi ;
typedef int gdb_wince_result ;
struct TYPE_4__ {int hProcess; } ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef int LPWSTR ;
typedef int DWORD ;


 int CreateProcessW (int ,int ,int *,int *,int ,int ,int *,int *,int *,TYPE_1__*) ;
 int FALSE ;
 int GDB_CREATEPROCESS ;
 int curproc ;
 int getdword (char*,int,int ) ;
 int getmemory (char*,int,int ,int *) ;
 int putresult (char*,int ,int,int ,TYPE_1__*,int) ;

__attribute__((used)) static void
create_process (int s)
{
  LPWSTR exec_file = getmemory (L"CreateProcess exec_file", s, GDB_CREATEPROCESS, ((void*)0));
  LPWSTR args = getmemory (L"CreateProcess args", s, GDB_CREATEPROCESS, ((void*)0));
  DWORD flags = getdword (L"CreateProcess flags", s, GDB_CREATEPROCESS);
  PROCESS_INFORMATION pi;
  gdb_wince_result res;

  res = CreateProcessW (exec_file,
   args,
   ((void*)0),
   ((void*)0),
   FALSE,
   flags,
   ((void*)0),
   ((void*)0),
   ((void*)0),
   &pi);
  putresult (L"CreateProcess", res, s, GDB_CREATEPROCESS, &pi, sizeof (pi));
  curproc = pi.hProcess;
}
