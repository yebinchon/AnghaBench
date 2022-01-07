
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_xfer {int allow_notify_list; struct auth_xfer* task_transfer; scalar_t__ chunks_first; int timer; int cp; int masters; struct auth_xfer* task_probe; struct auth_xfer* task_nextprobe; struct auth_xfer* name; int lock; } ;


 int auth_chunks_delete (struct auth_xfer*) ;
 int auth_free_masters (int ) ;
 int comm_point_delete (int ) ;
 int comm_timer_delete (int ) ;
 int free (struct auth_xfer*) ;
 int lock_basic_destroy (int *) ;

__attribute__((used)) static void
auth_xfer_delete(struct auth_xfer* xfr)
{
 if(!xfr) return;
 lock_basic_destroy(&xfr->lock);
 free(xfr->name);
 if(xfr->task_nextprobe) {
  comm_timer_delete(xfr->task_nextprobe->timer);
  free(xfr->task_nextprobe);
 }
 if(xfr->task_probe) {
  auth_free_masters(xfr->task_probe->masters);
  comm_point_delete(xfr->task_probe->cp);
  comm_timer_delete(xfr->task_probe->timer);
  free(xfr->task_probe);
 }
 if(xfr->task_transfer) {
  auth_free_masters(xfr->task_transfer->masters);
  comm_point_delete(xfr->task_transfer->cp);
  comm_timer_delete(xfr->task_transfer->timer);
  if(xfr->task_transfer->chunks_first) {
   auth_chunks_delete(xfr->task_transfer);
  }
  free(xfr->task_transfer);
 }
 auth_free_masters(xfr->allow_notify_list);
 free(xfr);
}
