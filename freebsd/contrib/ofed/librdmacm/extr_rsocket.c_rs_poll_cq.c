
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
struct rsocket {int state; size_t rmsg_tail; int sbuf_bytes_avail; int err; int sqe_avail; int ctrl_max_seqno; int rq_size; TYPE_2__* rmsg; int sseq_comp; scalar_t__ rbuf_size; scalar_t__ rbuf; TYPE_1__* cm_id; } ;
struct rs_iomap {int dummy; } ;
struct ibv_wc {scalar_t__ status; int wc_flags; int wr_id; int imm_data; } ;
struct TYPE_4__ {int op; int data; } ;
struct TYPE_3__ {int recv_cq; } ;


 int EIO ;
 scalar_t__ IBV_WC_SUCCESS ;
 int IBV_WC_WITH_IMM ;
 int RS_CTRL_DISCONNECT ;
 int RS_CTRL_SHUTDOWN ;




 size_t be32toh (int ) ;
 int errno ;
 int ibv_poll_cq (int ,int,struct ibv_wc*) ;
 int rs_connected ;
 void* rs_disconnected ;
 void* rs_error ;
 int rs_msg_data (size_t) ;
 int rs_msg_op (size_t) ;
 int rs_post_recv (struct rsocket*) ;
 int rs_readable ;
 size_t rs_wr_data (int ) ;
 int rs_wr_is_msg_send (int ) ;
 scalar_t__ rs_wr_is_recv (int ) ;
 int rs_writable ;

__attribute__((used)) static int rs_poll_cq(struct rsocket *rs)
{
 struct ibv_wc wc;
 uint32_t msg;
 int ret, rcnt = 0;

 while ((ret = ibv_poll_cq(rs->cm_id->recv_cq, 1, &wc)) > 0) {
  if (rs_wr_is_recv(wc.wr_id)) {
   if (wc.status != IBV_WC_SUCCESS)
    continue;
   rcnt++;

   if (wc.wc_flags & IBV_WC_WITH_IMM) {
    msg = be32toh(wc.imm_data);
   } else {
    msg = ((uint32_t *) (rs->rbuf + rs->rbuf_size))
     [rs_wr_data(wc.wr_id)];

   }
   switch (rs_msg_op(msg)) {
   case 129:
    rs->sseq_comp = (uint16_t) rs_msg_data(msg);
    break;
   case 130:

    break;
   case 131:
    if (rs_msg_data(msg) == RS_CTRL_DISCONNECT) {
     rs->state = rs_disconnected;
     return 0;
    } else if (rs_msg_data(msg) == RS_CTRL_SHUTDOWN) {
     if (rs->state & rs_writable) {
      rs->state &= ~rs_readable;
     } else {
      rs->state = rs_disconnected;
      return 0;
     }
    }
    break;
   case 128:

    break;
   default:
    rs->rmsg[rs->rmsg_tail].op = rs_msg_op(msg);
    rs->rmsg[rs->rmsg_tail].data = rs_msg_data(msg);
    if (++rs->rmsg_tail == rs->rq_size + 1)
     rs->rmsg_tail = 0;
    break;
   }
  } else {
   switch (rs_msg_op(rs_wr_data(wc.wr_id))) {
   case 129:
    rs->ctrl_max_seqno++;
    break;
   case 131:
    rs->ctrl_max_seqno++;
    if (rs_msg_data(rs_wr_data(wc.wr_id)) == RS_CTRL_DISCONNECT)
     rs->state = rs_disconnected;
    break;
   case 130:
    rs->sqe_avail++;
    if (!rs_wr_is_msg_send(wc.wr_id))
     rs->sbuf_bytes_avail += sizeof(struct rs_iomap);
    break;
   default:
    rs->sqe_avail++;
    rs->sbuf_bytes_avail += rs_msg_data(rs_wr_data(wc.wr_id));
    break;
   }
   if (wc.status != IBV_WC_SUCCESS && (rs->state & rs_connected)) {
    rs->state = rs_error;
    rs->err = EIO;
   }
  }
 }

 if (rs->state & rs_connected) {
  while (!ret && rcnt--)
   ret = rs_post_recv(rs);

  if (ret) {
   rs->state = rs_error;
   rs->err = errno;
  }
 }
 return ret;
}
