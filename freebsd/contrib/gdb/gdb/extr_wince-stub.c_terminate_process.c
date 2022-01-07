
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef int gdb_wince_result ;
typedef int HANDLE ;


 int GDB_TERMINATEPROCESS ;
 scalar_t__ TerminateProcess (int ,int ) ;
 int gethandle (char*,int,int ) ;
 int putresult (char*,int,int,int ,int*,int) ;

__attribute__((used)) static void
terminate_process (int s)
{
  gdb_wince_result res;
  HANDLE h = gethandle (L"TerminateProcess handle", s, GDB_TERMINATEPROCESS);

  res = TerminateProcess (h, 0) || 1;
  putresult (L"Terminate process result", res, s, GDB_TERMINATEPROCESS,
      &res, sizeof (res));
}
