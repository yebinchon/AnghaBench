
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_wince_result ;
typedef int HANDLE ;


 int GDB_CLOSEHANDLE ;
 scalar_t__ getresult (char*,int ,int *,int *) ;
 int puthandle (char*,int ,int ) ;
 scalar_t__ s ;

__attribute__((used)) static int
close_handle (HANDLE h)
{
  gdb_wince_result res;
  if (s < 0)
    return 1;
  puthandle ("CloseHandle handle", GDB_CLOSEHANDLE, h);
  return (int) getresult ("CloseHandle result", GDB_CLOSEHANDLE, &res, ((void*)0));
}
