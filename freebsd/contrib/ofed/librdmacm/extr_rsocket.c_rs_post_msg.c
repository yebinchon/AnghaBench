
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rsocket {int opts; TYPE_1__* cm_id; } ;
struct ibv_sge {uintptr_t addr; int length; scalar_t__ lkey; } ;
struct ibv_send_wr {int num_sge; scalar_t__ send_flags; int opcode; struct ibv_sge* sg_list; int imm_data; int * next; int wr_id; } ;
struct TYPE_2__ {int qp; } ;


 scalar_t__ IBV_SEND_INLINE ;
 int IBV_WR_RDMA_WRITE_WITH_IMM ;
 int IBV_WR_SEND ;
 int RS_OPT_MSG_SEND ;
 int htobe32 (int ) ;
 int ibv_post_send (int ,struct ibv_send_wr*,struct ibv_send_wr**) ;
 int rdma_seterrno (int ) ;
 int rs_send_wr_id (int ) ;

__attribute__((used)) static int rs_post_msg(struct rsocket *rs, uint32_t msg)
{
 struct ibv_send_wr wr, *bad;
 struct ibv_sge sge;

 wr.wr_id = rs_send_wr_id(msg);
 wr.next = ((void*)0);
 if (!(rs->opts & RS_OPT_MSG_SEND)) {
  wr.sg_list = ((void*)0);
  wr.num_sge = 0;
  wr.opcode = IBV_WR_RDMA_WRITE_WITH_IMM;
  wr.send_flags = 0;
  wr.imm_data = htobe32(msg);
 } else {
  sge.addr = (uintptr_t) &msg;
  sge.lkey = 0;
  sge.length = sizeof msg;
  wr.sg_list = &sge;
  wr.num_sge = 1;
  wr.opcode = IBV_WR_SEND;
  wr.send_flags = IBV_SEND_INLINE;
 }

 return rdma_seterrno(ibv_post_send(rs->cm_id->qp, &wr, &bad));
}
