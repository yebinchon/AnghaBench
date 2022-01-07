
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_admin_queue {int q_lock; int outstanding_cmds; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; } ;


 scalar_t__ ATOMIC32_READ (int *) ;
 int ENA_MSLEEP (int ) ;
 int ENA_POLL_MS ;
 int ENA_SPINLOCK_LOCK (int ,unsigned long) ;
 int ENA_SPINLOCK_UNLOCK (int ,unsigned long) ;

void ena_com_wait_for_abort_completion(struct ena_com_dev *ena_dev)
{
 struct ena_com_admin_queue *admin_queue = &ena_dev->admin_queue;
 unsigned long flags = 0;

 ENA_SPINLOCK_LOCK(admin_queue->q_lock, flags);
 while (ATOMIC32_READ(&admin_queue->outstanding_cmds) != 0) {
  ENA_SPINLOCK_UNLOCK(admin_queue->q_lock, flags);
  ENA_MSLEEP(ENA_POLL_MS);
  ENA_SPINLOCK_LOCK(admin_queue->q_lock, flags);
 }
 ENA_SPINLOCK_UNLOCK(admin_queue->q_lock, flags);
}
