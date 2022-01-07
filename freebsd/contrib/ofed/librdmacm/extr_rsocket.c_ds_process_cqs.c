
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int cq_armed; int cq_lock; int cq_wait_lock; } ;


 int ERR (int ) ;
 int EWOULDBLOCK ;
 int ds_get_cq_event (struct rsocket*) ;
 int ds_poll_cqs (struct rsocket*) ;
 int ds_req_notify_cqs (struct rsocket*) ;
 int fastlock_acquire (int *) ;
 int fastlock_release (int *) ;

__attribute__((used)) static int ds_process_cqs(struct rsocket *rs, int nonblock, int (*test)(struct rsocket *rs))
{
 int ret = 0;

 fastlock_acquire(&rs->cq_lock);
 do {
  ds_poll_cqs(rs);
  if (test(rs)) {
   ret = 0;
   break;
  } else if (nonblock) {
   ret = ERR(EWOULDBLOCK);
  } else if (!rs->cq_armed) {
   ds_req_notify_cqs(rs);
   rs->cq_armed = 1;
  } else {
   fastlock_acquire(&rs->cq_wait_lock);
   fastlock_release(&rs->cq_lock);

   ret = ds_get_cq_event(rs);
   fastlock_release(&rs->cq_wait_lock);
   fastlock_acquire(&rs->cq_lock);
  }
 } while (!ret);

 fastlock_release(&rs->cq_lock);
 return ret;
}
