
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int GDB_SUSPENDTHREAD ;
 scalar_t__ getdword (char*,int ) ;
 int puthandle (char*,int ,int ) ;
 scalar_t__ s ;

__attribute__((used)) static int
suspend_thread (HANDLE h)
{
  if (s < 0)
    return 1;
  puthandle ("SuspendThread handle", GDB_SUSPENDTHREAD, h);
  return (int) getdword ("SuspendThread result", GDB_SUSPENDTHREAD);
}
