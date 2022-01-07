
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsocket {int cq_armed; int cq_lock; int cq_wait_lock; TYPE_1__* cm_id; } ;
struct TYPE_2__ {int recv_cq; } ;


 int ERR (int ) ;
 int EWOULDBLOCK ;
 int fastlock_acquire (int *) ;
 int fastlock_release (int *) ;
 int ibv_req_notify_cq (int ,int ) ;
 int rs_get_cq_event (struct rsocket*) ;
 int rs_poll_cq (struct rsocket*) ;
 int rs_update_credits (struct rsocket*) ;

__attribute__((used)) static int rs_process_cq(struct rsocket *rs, int nonblock, int (*test)(struct rsocket *rs))
{
 int ret;

 fastlock_acquire(&rs->cq_lock);
 do {
  rs_update_credits(rs);
  ret = rs_poll_cq(rs);
  if (test(rs)) {
   ret = 0;
   break;
  } else if (ret) {
   break;
  } else if (nonblock) {
   ret = ERR(EWOULDBLOCK);
  } else if (!rs->cq_armed) {
   ibv_req_notify_cq(rs->cm_id->recv_cq, 0);
   rs->cq_armed = 1;
  } else {
   rs_update_credits(rs);
   fastlock_acquire(&rs->cq_wait_lock);
   fastlock_release(&rs->cq_lock);

   ret = rs_get_cq_event(rs);
   fastlock_release(&rs->cq_wait_lock);
   fastlock_acquire(&rs->cq_lock);
  }
 } while (!ret);

 rs_update_credits(rs);
 fastlock_release(&rs->cq_lock);
 return ret;
}
