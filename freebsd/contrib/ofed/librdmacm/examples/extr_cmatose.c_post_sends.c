
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_sge {uintptr_t addr; int lkey; int length; } ;
struct ibv_send_wr {int num_sge; unsigned long wr_id; scalar_t__ send_flags; int opcode; struct ibv_sge* sg_list; int * next; } ;
struct cmatest_node {TYPE_2__* cma_id; scalar_t__ mem; TYPE_1__* mr; int connected; } ;
struct TYPE_4__ {int qp; } ;
struct TYPE_3__ {int lkey; } ;


 int IBV_WR_SEND ;
 int ibv_post_send (int ,struct ibv_send_wr*,struct ibv_send_wr**) ;
 int message_count ;
 int message_size ;
 int printf (char*,int) ;

__attribute__((used)) static int post_sends(struct cmatest_node *node)
{
 struct ibv_send_wr send_wr, *bad_send_wr;
 struct ibv_sge sge;
 int i, ret = 0;

 if (!node->connected || !message_count)
  return 0;

 send_wr.next = ((void*)0);
 send_wr.sg_list = &sge;
 send_wr.num_sge = 1;
 send_wr.opcode = IBV_WR_SEND;
 send_wr.send_flags = 0;
 send_wr.wr_id = (unsigned long)node;

 sge.length = message_size;
 sge.lkey = node->mr->lkey;
 sge.addr = (uintptr_t) node->mem;

 for (i = 0; i < message_count && !ret; i++) {
  ret = ibv_post_send(node->cma_id->qp, &send_wr, &bad_send_wr);
  if (ret)
   printf("failed to post sends: %d\n", ret);
 }
 return ret;
}
