
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_wc {int imm_data; } ;
struct ibv_qp_init_attr {int dummy; } ;
struct ibv_qp_attr {int qkey; } ;
struct cmatest_node {int remote_qkey; TYPE_1__* cma_id; int remote_qpn; int mem; int pd; int ah; } ;
struct TYPE_2__ {int qp; int port_num; } ;


 int IBV_QP_QKEY ;
 int be32toh (int ) ;
 int ibv_create_ah_from_wc (int ,struct ibv_wc*,int ,int ) ;
 int ibv_query_qp (int ,struct ibv_qp_attr*,int ,struct ibv_qp_init_attr*) ;

__attribute__((used)) static void create_reply_ah(struct cmatest_node *node, struct ibv_wc *wc)
{
 struct ibv_qp_attr attr;
 struct ibv_qp_init_attr init_attr;

 node->ah = ibv_create_ah_from_wc(node->pd, wc, node->mem,
      node->cma_id->port_num);
 node->remote_qpn = be32toh(wc->imm_data);

 ibv_query_qp(node->cma_id->qp, &attr, IBV_QP_QKEY, &init_attr);
 node->remote_qkey = attr.qkey;
}
