
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_send_wr; int max_send_sge; } ;
struct ibv_qp_init_attr_ex {int pd; int comp_mask; TYPE_1__ cap; int send_cq; int qp_type; int xrcd; } ;
struct ibv_qp_attr {int qp_access_flags; int port_num; scalar_t__ pkey_index; void* qp_state; } ;
struct TYPE_4__ {int num_clients; int num_tests; void** send_qp; int ib_port; int context; int pd; int send_cq; void** recv_qp; int xrcd; } ;


 int IBV_ACCESS_REMOTE_READ ;
 int IBV_ACCESS_REMOTE_WRITE ;
 void* IBV_QPS_INIT ;
 int IBV_QPT_XRC_RECV ;
 int IBV_QPT_XRC_SEND ;
 int IBV_QP_ACCESS_FLAGS ;
 int IBV_QP_INIT_ATTR_PD ;
 int IBV_QP_INIT_ATTR_XRCD ;
 int IBV_QP_PKEY_INDEX ;
 int IBV_QP_PORT ;
 int IBV_QP_STATE ;
 TYPE_2__ ctx ;
 int errno ;
 int fprintf (int ,char*,int,...) ;
 void* ibv_create_qp_ex (int ,struct ibv_qp_init_attr_ex*) ;
 scalar_t__ ibv_modify_qp (void*,struct ibv_qp_attr*,int) ;
 int memset (struct ibv_qp_init_attr_ex*,int ,int) ;
 int stderr ;

__attribute__((used)) static int create_qps(void)
{
 struct ibv_qp_init_attr_ex init;
 struct ibv_qp_attr mod;
 int i;

 for (i = 0; i < ctx.num_clients; ++i) {

  memset(&init, 0, sizeof init);
  init.qp_type = IBV_QPT_XRC_RECV;
  init.comp_mask = IBV_QP_INIT_ATTR_XRCD;
  init.xrcd = ctx.xrcd;

  ctx.recv_qp[i] = ibv_create_qp_ex(ctx.context, &init);
  if (!ctx.recv_qp[i]) {
   fprintf(stderr, "Couldn't create recv QP[%d] errno %d\n",
    i, errno);
   return 1;
  }

  mod.qp_state = IBV_QPS_INIT;
  mod.pkey_index = 0;
  mod.port_num = ctx.ib_port;
  mod.qp_access_flags = IBV_ACCESS_REMOTE_WRITE | IBV_ACCESS_REMOTE_READ;

  if (ibv_modify_qp(ctx.recv_qp[i], &mod,
      IBV_QP_STATE | IBV_QP_PKEY_INDEX |
      IBV_QP_PORT | IBV_QP_ACCESS_FLAGS)) {
   fprintf(stderr, "Failed to modify recv QP[%d] to INIT\n", i);
   return 1;
  }

  memset(&init, 0, sizeof init);
  init.qp_type = IBV_QPT_XRC_SEND;
  init.send_cq = ctx.send_cq;
  init.cap.max_send_wr = ctx.num_clients * ctx.num_tests;
  init.cap.max_send_sge = 1;
  init.comp_mask = IBV_QP_INIT_ATTR_PD;
  init.pd = ctx.pd;

  ctx.send_qp[i] = ibv_create_qp_ex(ctx.context, &init);
  if (!ctx.send_qp[i]) {
   fprintf(stderr, "Couldn't create send QP[%d] errno %d\n",
    i, errno);
   return 1;
  }

  mod.qp_state = IBV_QPS_INIT;
  mod.pkey_index = 0;
  mod.port_num = ctx.ib_port;
  mod.qp_access_flags = 0;

  if (ibv_modify_qp(ctx.send_qp[i], &mod,
      IBV_QP_STATE | IBV_QP_PKEY_INDEX |
      IBV_QP_PORT | IBV_QP_ACCESS_FLAGS)) {
   fprintf(stderr, "Failed to modify send QP[%d] to INIT\n", i);
   return 1;
  }
 }

 return 0;
}
