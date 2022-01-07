
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ gdb_wince_result ;
typedef int c ;
struct TYPE_5__ {int ContextFlags; } ;
typedef int HANDLE ;
typedef TYPE_1__ CONTEXT ;


 int GDB_GETTHREADCONTEXT ;
 scalar_t__ GetThreadContext (int ,TYPE_1__*) ;
 int getdword (char*,int,int ) ;
 int gethandle (char*,int,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int putresult (char*,scalar_t__,int,int ,TYPE_1__*,int) ;

__attribute__((used)) static void
get_thread_context (int s)
{
  CONTEXT c;
  HANDLE h = gethandle (L"GetThreadContext handle", s, GDB_GETTHREADCONTEXT);
  gdb_wince_result res;

  memset (&c, 0, sizeof (c));
  c.ContextFlags = getdword (L"GetThreadContext flags", s, GDB_GETTHREADCONTEXT);

  res = (gdb_wince_result) GetThreadContext (h, &c);
  putresult (L"GetThreadContext data", res, s, GDB_GETTHREADCONTEXT,
      &c, sizeof (c));
}
