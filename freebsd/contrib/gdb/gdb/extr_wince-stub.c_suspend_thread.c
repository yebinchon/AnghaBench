
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;


 int GDB_SUSPENDTHREAD ;
 int SuspendThread (int ) ;
 int gethandle (char*,int,int ) ;
 int putdword (char*,int,int ,int ) ;

__attribute__((used)) static void
suspend_thread (int s)
{
  DWORD res;
  HANDLE h = gethandle (L"SuspendThread handle", s, GDB_SUSPENDTHREAD);
  res = SuspendThread (h);
  putdword (L"SuspendThread result", s, GDB_SUSPENDTHREAD, res);
}
