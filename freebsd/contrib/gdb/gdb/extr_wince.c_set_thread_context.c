
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_wince_result ;
typedef int HANDLE ;
typedef int CONTEXT ;


 int GDB_SETTHREADCONTEXT ;
 int getresult (char*,int ,int *,int *) ;
 int puthandle (char*,int ,int ) ;
 int putmemory (char*,int ,int *,int) ;
 scalar_t__ s ;

__attribute__((used)) static int
set_thread_context (HANDLE h, CONTEXT * c)
{
  gdb_wince_result res;
  if (s < 0)
    return 1;
  puthandle ("SetThreadContext handle", GDB_SETTHREADCONTEXT, h);
  putmemory ("SetThreadContext context", GDB_SETTHREADCONTEXT, c, sizeof (*c));
  return getresult ("SetThreadContext context", GDB_SETTHREADCONTEXT, &res, ((void*)0));
}
