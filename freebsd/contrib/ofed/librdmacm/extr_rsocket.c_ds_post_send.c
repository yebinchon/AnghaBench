
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct rsocket {scalar_t__ sq_inline; TYPE_5__* conn_dest; } ;
struct ibv_sge {scalar_t__ length; } ;
struct TYPE_6__ {int remote_qkey; int remote_qpn; int ah; } ;
struct TYPE_7__ {TYPE_1__ ud; } ;
struct ibv_send_wr {int num_sge; TYPE_2__ wr; int send_flags; int opcode; struct ibv_sge* sg_list; int * next; int wr_id; } ;
struct TYPE_10__ {TYPE_4__* qp; int qpn; int ah; } ;
struct TYPE_9__ {TYPE_3__* cm_id; } ;
struct TYPE_8__ {int qp; } ;


 int IBV_SEND_INLINE ;
 int IBV_WR_SEND ;
 int RDMA_UDP_QKEY ;
 int ibv_post_send (int ,struct ibv_send_wr*,struct ibv_send_wr**) ;
 int rdma_seterrno (int ) ;
 int rs_send_wr_id (int ) ;

__attribute__((used)) static int ds_post_send(struct rsocket *rs, struct ibv_sge *sge,
   uint32_t wr_data)
{
 struct ibv_send_wr wr, *bad;

 wr.wr_id = rs_send_wr_id(wr_data);
 wr.next = ((void*)0);
 wr.sg_list = sge;
 wr.num_sge = 1;
 wr.opcode = IBV_WR_SEND;
 wr.send_flags = (sge->length <= rs->sq_inline) ? IBV_SEND_INLINE : 0;
 wr.wr.ud.ah = rs->conn_dest->ah;
 wr.wr.ud.remote_qpn = rs->conn_dest->qpn;
 wr.wr.ud.remote_qkey = RDMA_UDP_QKEY;

 return rdma_seterrno(ibv_post_send(rs->conn_dest->qp->cm_id->qp, &wr, &bad));
}
