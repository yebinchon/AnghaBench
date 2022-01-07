
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef scalar_t__ gdb_wince_result ;
typedef int HANDLE ;


 scalar_t__ CloseHandle (int ) ;
 int GDB_CLOSEHANDLE ;
 int gethandle (char*,int,int ) ;
 int putresult (char*,scalar_t__,int,int ,scalar_t__*,int) ;

__attribute__((used)) static void
close_handle (int s)
{
  gdb_wince_result res;
  HANDLE h = gethandle (L"CloseHandle handle", s, GDB_CLOSEHANDLE);
  res = (gdb_wince_result) CloseHandle (h);
  putresult (L"CloseHandle result", res, s, GDB_CLOSEHANDLE, &res, sizeof (res));
}
