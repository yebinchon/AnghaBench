
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsocket {int opts; int fd_flags; int state; TYPE_1__* cm_id; int ctrl_seqno; } ;
struct TYPE_2__ {int recv_cq; } ;


 int EBADF ;
 int ERR (int ) ;
 int O_NONBLOCK ;
 int RS_CTRL_DISCONNECT ;
 int RS_CTRL_SHUTDOWN ;
 int RS_OPT_SVC_ACTIVE ;
 int RS_OP_CTRL ;
 int RS_SVC_REM_KEEPALIVE ;
 int SHUT_RDWR ;
 int SHUT_WR ;
 int ibv_req_notify_cq (int ,int ) ;
 int idm ;
 struct rsocket* idm_lookup (int *,int) ;
 int rs_conn_all_sends_done ;
 int rs_conn_can_send_ctrl ;
 int rs_connected ;
 scalar_t__ rs_ctrl_avail (struct rsocket*) ;
 int rs_disconnected ;
 int rs_msg_set (int ,int) ;
 int rs_notify_svc (int *,struct rsocket*,int ) ;
 int rs_post_msg (struct rsocket*,int ) ;
 int rs_process_cq (struct rsocket*,int ,int ) ;
 int rs_readable ;
 int rs_set_nonblocking (struct rsocket*,int) ;
 int rs_writable ;
 int tcp_svc ;
 int ucma_shutdown (TYPE_1__*) ;

int rshutdown(int socket, int how)
{
 struct rsocket *rs;
 int ctrl, ret = 0;

 rs = idm_lookup(&idm, socket);
 if (!rs)
  return ERR(EBADF);
 if (rs->opts & RS_OPT_SVC_ACTIVE)
  rs_notify_svc(&tcp_svc, rs, RS_SVC_REM_KEEPALIVE);

 if (rs->fd_flags & O_NONBLOCK)
  rs_set_nonblocking(rs, 0);

 if (rs->state & rs_connected) {
  if (how == SHUT_RDWR) {
   ctrl = RS_CTRL_DISCONNECT;
   rs->state &= ~(rs_readable | rs_writable);
  } else if (how == SHUT_WR) {
   rs->state &= ~rs_writable;
   ctrl = (rs->state & rs_readable) ?
    RS_CTRL_SHUTDOWN : RS_CTRL_DISCONNECT;
  } else {
   rs->state &= ~rs_readable;
   if (rs->state & rs_writable)
    goto out;
   ctrl = RS_CTRL_DISCONNECT;
  }
  if (!rs_ctrl_avail(rs)) {
   ret = rs_process_cq(rs, 0, rs_conn_can_send_ctrl);
   if (ret)
    goto out;
  }

  if ((rs->state & rs_connected) && rs_ctrl_avail(rs)) {
   rs->ctrl_seqno++;
   ret = rs_post_msg(rs, rs_msg_set(RS_OP_CTRL, ctrl));
  }
 }

 if (rs->state & rs_connected)
  rs_process_cq(rs, 0, rs_conn_all_sends_done);

out:
 if ((rs->fd_flags & O_NONBLOCK) && (rs->state & rs_connected))
  rs_set_nonblocking(rs, rs->fd_flags);

 if (rs->state & rs_disconnected) {

  ibv_req_notify_cq(rs->cm_id->recv_cq, 0);
  ucma_shutdown(rs->cm_id);
 }

 return ret;
}
