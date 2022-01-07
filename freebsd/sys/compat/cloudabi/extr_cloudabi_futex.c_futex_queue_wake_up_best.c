
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_waiter {int fw_locked; int fw_wait; int * fw_queue; } ;
struct futex_queue {int fq_count; int fq_list; } ;


 struct futex_waiter* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int cv_signal (int *) ;
 int fw_next ;

__attribute__((used)) static void
futex_queue_wake_up_best(struct futex_queue *fq)
{
 struct futex_waiter *fw;

 fw = STAILQ_FIRST(&fq->fq_list);
 fw->fw_locked = 1;
 fw->fw_queue = ((void*)0);
 cv_signal(&fw->fw_wait);

 STAILQ_REMOVE_HEAD(&fq->fq_list, fw_next);
 --fq->fq_count;
}
