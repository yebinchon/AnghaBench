
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_admin_queue {int running_state; int q_lock; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; } ;


 int ENA_SPINLOCK_LOCK (int ,unsigned long) ;
 int ENA_SPINLOCK_UNLOCK (int ,unsigned long) ;

void ena_com_set_admin_running_state(struct ena_com_dev *ena_dev, bool state)
{
 struct ena_com_admin_queue *admin_queue = &ena_dev->admin_queue;
 unsigned long flags = 0;

 ENA_SPINLOCK_LOCK(admin_queue->q_lock, flags);
 ena_dev->admin_queue.running_state = state;
 ENA_SPINLOCK_UNLOCK(admin_queue->q_lock, flags);
}
