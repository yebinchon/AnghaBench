
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int h; int id; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_7__ {TYPE_1__* next; } ;
typedef int HANDLE ;
typedef int DWORD ;


 int FALSE ;
 int add_thread (int ) ;
 int memset (TYPE_1__*,int ,int) ;
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
  add_thread (id);
  return th;
}
