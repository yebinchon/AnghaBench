
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int state; int cq_lock; int ctrl_seqno; } ;


 int RS_CTRL_KEEPALIVE ;
 int RS_OP_CTRL ;
 int fastlock_acquire (int *) ;
 int fastlock_release (int *) ;
 int rs_connected ;
 scalar_t__ rs_ctrl_avail (struct rsocket*) ;
 int rs_msg_set (int ,int ) ;
 int rs_post_write (struct rsocket*,int *,int ,int ,int ,uintptr_t,uintptr_t) ;

__attribute__((used)) static void tcp_svc_send_keepalive(struct rsocket *rs)
{
 fastlock_acquire(&rs->cq_lock);
 if (rs_ctrl_avail(rs) && (rs->state & rs_connected)) {
  rs->ctrl_seqno++;
  rs_post_write(rs, ((void*)0), 0, rs_msg_set(RS_OP_CTRL, RS_CTRL_KEEPALIVE),
         0, (uintptr_t) ((void*)0), (uintptr_t) ((void*)0));
 }
 fastlock_release(&rs->cq_lock);
}
