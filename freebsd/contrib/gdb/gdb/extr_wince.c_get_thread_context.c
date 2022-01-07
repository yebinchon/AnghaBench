
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ContextFlags; } ;
typedef int HANDLE ;
typedef TYPE_1__ CONTEXT ;


 int GDB_GETTHREADCONTEXT ;
 int getresult (char*,int ,TYPE_1__*,int *) ;
 int putdword (char*,int ,int ) ;
 int puthandle (char*,int ,int ) ;
 scalar_t__ s ;

__attribute__((used)) static int
get_thread_context (HANDLE h, CONTEXT * c)
{
  if (s < 0)
    return 1;
  puthandle ("GetThreadContext handle", GDB_GETTHREADCONTEXT, h);
  putdword ("GetThreadContext flags", GDB_GETTHREADCONTEXT, c->ContextFlags);
  return getresult ("GetThreadContext context", GDB_GETTHREADCONTEXT, c, ((void*)0));
}
