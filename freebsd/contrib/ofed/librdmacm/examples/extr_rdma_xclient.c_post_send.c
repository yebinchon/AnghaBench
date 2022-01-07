
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct ibv_sge {scalar_t__ lkey; scalar_t__ length; scalar_t__ addr; } ;
struct TYPE_5__ {int remote_srqn; } ;
struct TYPE_6__ {TYPE_1__ xrc; } ;
struct ibv_send_wr {uintptr_t wr_id; int num_sge; TYPE_2__ qp_type; int send_flags; int opcode; struct ibv_sge* sg_list; int * next; } ;
struct TYPE_8__ {scalar_t__ ai_qp_type; } ;
struct TYPE_7__ {int qp; } ;


 scalar_t__ IBV_QPT_XRC_SEND ;
 int IBV_SEND_INLINE ;
 int IBV_WR_SEND ;
 TYPE_4__ hints ;
 int ibv_post_send (int ,struct ibv_send_wr*,struct ibv_send_wr**) ;
 TYPE_3__* id ;
 int perror (char*) ;
 scalar_t__ send_msg ;
 int srqn ;

__attribute__((used)) static int post_send(void)
{
 struct ibv_send_wr wr, *bad;
 struct ibv_sge sge;
 int ret;

 sge.addr = (uint64_t) (uintptr_t) send_msg;
 sge.length = (uint32_t) sizeof send_msg;
 sge.lkey = 0;
 wr.wr_id = (uintptr_t) ((void*)0);
 wr.next = ((void*)0);
 wr.sg_list = &sge;
 wr.num_sge = 1;
 wr.opcode = IBV_WR_SEND;
 wr.send_flags = IBV_SEND_INLINE;
 if (hints.ai_qp_type == IBV_QPT_XRC_SEND)
  wr.qp_type.xrc.remote_srqn = srqn;

 ret = ibv_post_send(id->qp, &wr, &bad);
 if (ret)
  perror("rdma_post_send");

 return ret;
}
