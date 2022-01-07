
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ ContextFlags; void* Dr7; void* Dr3; void* Dr2; void* Dr1; void* Dr0; } ;
struct TYPE_8__ {TYPE_6__ context; int h; struct TYPE_8__* next; int id; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_9__ {TYPE_1__* next; } ;
typedef int HANDLE ;
typedef int DWORD ;


 int CHECK (int ) ;
 scalar_t__ CONTEXT_DEBUG_REGISTERS ;
 int FALSE ;
 int GetThreadContext (int ,TYPE_6__*) ;
 int SetThreadContext (int ,TYPE_6__*) ;
 int add_thread (int ) ;
 scalar_t__ debug_registers_used ;
 void** dr ;
 int memset (TYPE_1__*,int ,int) ;
 int pid_to_ptid (int ) ;
 TYPE_3__ thread_head ;
 TYPE_1__* thread_rec (int ,int ) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static thread_info *
child_add_thread (DWORD id, HANDLE h)
{
  thread_info *th;

  if ((th = thread_rec (id, FALSE)))
    return th;

  th = (thread_info *) xmalloc (sizeof (*th));
  memset (th, 0, sizeof (*th));
  th->id = id;
  th->h = h;
  th->next = thread_head.next;
  thread_head.next = th;
  add_thread (pid_to_ptid (id));

  if (debug_registers_used)
    {

      th->context.ContextFlags = CONTEXT_DEBUG_REGISTERS;
      CHECK (GetThreadContext (th->h, &th->context));
      th->context.Dr0 = dr[0];
      th->context.Dr1 = dr[1];
      th->context.Dr2 = dr[2];
      th->context.Dr3 = dr[3];


      th->context.Dr7 = dr[7];
      CHECK (SetThreadContext (th->h, &th->context));
      th->context.ContextFlags = 0;
    }
  return th;
}
