
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef int gdb_wince_result ;
typedef int HANDLE ;


 int GDB_THREADALIVE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int gethandle (char*,int,int ) ;
 int putresult (char*,int,int,int ,int*,int) ;

__attribute__((used)) static void
thread_alive (int s)
{
  HANDLE h = gethandle (L"ThreadAlive handle", s, GDB_THREADALIVE);
  gdb_wince_result res;

  res = WaitForSingleObject (h, 0) == WAIT_OBJECT_0 ? 1 : 0;
  putresult (L"WriteProcessMemory data", res, s, GDB_THREADALIVE,
      &res, sizeof (res));
}
