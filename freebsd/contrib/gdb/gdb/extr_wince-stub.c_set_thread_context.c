
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef int gdb_wince_result ;
typedef int LPCONTEXT ;
typedef int HANDLE ;


 int GDB_SETTHREADCONTEXT ;
 int SetThreadContext (int ,int ) ;
 int gethandle (char*,int,int ) ;
 int getmemory (char*,int,int ,int *) ;
 int putresult (char*,int ,int,int ,int *,int) ;

__attribute__((used)) static void
set_thread_context (int s)
{
  gdb_wince_result res;
  HANDLE h = gethandle (L"SetThreadContext handle", s, GDB_SETTHREADCONTEXT);
  LPCONTEXT pc = (LPCONTEXT) getmemory (L"SetThreadContext context", s,
     GDB_SETTHREADCONTEXT, ((void*)0));

  res = SetThreadContext (h, pc);
  putresult (L"SetThreadContext result", res, s, GDB_SETTHREADCONTEXT,
      &res, sizeof (res));
}
