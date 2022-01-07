
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kq_exit; TYPE_1__* kq_td; int kq_proc; } ;
typedef TYPE_2__ kdpc_queue ;
struct TYPE_4__ {int td_proc; } ;


 int FALSE ;
 int IO_NO_INCREMENT ;
 int KeSetEvent (int *,int ,int ) ;
 int PWAIT ;
 int WORKITEM_THREADS ;
 int hz ;
 int tsleep (int ,int ,char*,int) ;
 TYPE_2__* wq_queues ;

__attribute__((used)) static void
ntoskrnl_destroy_workitem_threads(void)
{
 kdpc_queue *kq;
 int i;

 for (i = 0; i < WORKITEM_THREADS; i++) {
  kq = wq_queues + i;
  kq->kq_exit = 1;
  KeSetEvent(&kq->kq_proc, IO_NO_INCREMENT, FALSE);
  while (kq->kq_exit)
   tsleep(kq->kq_td->td_proc, PWAIT, "waitiw", hz/10);
 }
}
