
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int port_num; int sl; int dlid; } ;
struct ibv_qp_attr {int min_rnr_timer; int timeout; int retry_cnt; int rnr_retry; int sq_psn; void* qp_state; TYPE_4__ ah_attr; int rq_psn; int path_mtu; int dest_qp_num; } ;
struct TYPE_11__ {int * send_qp; TYPE_3__* rem_dest; int ib_port; int sl; int mtu; int * recv_qp; } ;
struct TYPE_7__ {scalar_t__ interface_id; } ;
struct TYPE_8__ {TYPE_1__ global; } ;
struct TYPE_9__ {int recv_psn; TYPE_2__ gid; int lid; int send_psn; int recv_qpn; int send_qpn; } ;


 void* IBV_QPS_RTR ;
 void* IBV_QPS_RTS ;
 int IBV_QP_AV ;
 int IBV_QP_DEST_QPN ;
 int IBV_QP_MAX_DEST_RD_ATOMIC ;
 int IBV_QP_MAX_QP_RD_ATOMIC ;
 int IBV_QP_MIN_RNR_TIMER ;
 int IBV_QP_PATH_MTU ;
 int IBV_QP_RETRY_CNT ;
 int IBV_QP_RNR_RETRY ;
 int IBV_QP_RQ_PSN ;
 int IBV_QP_SQ_PSN ;
 int IBV_QP_STATE ;
 int IBV_QP_TIMEOUT ;
 TYPE_5__ ctx ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ibv_modify_qp (int ,struct ibv_qp_attr*,int) ;
 int memset (struct ibv_qp_attr*,int ,int) ;
 int set_ah_attr (TYPE_4__*,TYPE_5__*,int) ;
 int stderr ;

__attribute__((used)) static int connect_qps(int index)
{
 struct ibv_qp_attr attr;

 memset(&attr, 0, sizeof attr);
 attr.qp_state = IBV_QPS_RTR;
 attr.dest_qp_num = ctx.rem_dest[index].send_qpn;
 attr.path_mtu = ctx.mtu;
 attr.rq_psn = ctx.rem_dest[index].send_psn;
 attr.min_rnr_timer = 12;
 attr.ah_attr.dlid = ctx.rem_dest[index].lid;
 attr.ah_attr.sl = ctx.sl;
 attr.ah_attr.port_num = ctx.ib_port;

 if (ctx.rem_dest[index].gid.global.interface_id)
  set_ah_attr(&attr.ah_attr, &ctx, index);

 if (ibv_modify_qp(ctx.recv_qp[index], &attr,
     IBV_QP_STATE | IBV_QP_AV | IBV_QP_PATH_MTU |
     IBV_QP_DEST_QPN | IBV_QP_RQ_PSN |
     IBV_QP_MAX_DEST_RD_ATOMIC | IBV_QP_MIN_RNR_TIMER)) {
  fprintf(stderr, "Failed to modify recv QP[%d] to RTR\n", index);
  return 1;
 }

 memset(&attr, 0, sizeof attr);
 attr.qp_state = IBV_QPS_RTS;
 attr.timeout = 14;
 attr.sq_psn = ctx.rem_dest[index].recv_psn;

 if (ibv_modify_qp(ctx.recv_qp[index], &attr,
     IBV_QP_STATE | IBV_QP_TIMEOUT | IBV_QP_SQ_PSN)) {
  fprintf(stderr, "Failed to modify recv QP[%d] to RTS\n", index);
  return 1;
 }

 memset(&attr, 0, sizeof attr);
 attr.qp_state = IBV_QPS_RTR;
 attr.dest_qp_num = ctx.rem_dest[index].recv_qpn;
 attr.path_mtu = ctx.mtu;
 attr.rq_psn = ctx.rem_dest[index].send_psn;
 attr.ah_attr.dlid = ctx.rem_dest[index].lid;
 attr.ah_attr.sl = ctx.sl;
 attr.ah_attr.port_num = ctx.ib_port;

 if (ctx.rem_dest[index].gid.global.interface_id)
  set_ah_attr(&attr.ah_attr, &ctx, index);

 if (ibv_modify_qp(ctx.send_qp[index], &attr,
     IBV_QP_STATE | IBV_QP_AV | IBV_QP_PATH_MTU |
     IBV_QP_DEST_QPN | IBV_QP_RQ_PSN)) {
  fprintf(stderr, "Failed to modify send QP[%d] to RTR\n", index);
  return 1;
 }

 memset(&attr, 0, sizeof attr);
 attr.qp_state = IBV_QPS_RTS;
 attr.timeout = 14;
 attr.retry_cnt = 7;
 attr.rnr_retry = 7;
 attr.sq_psn = ctx.rem_dest[index].recv_psn;

 if (ibv_modify_qp(ctx.send_qp[index], &attr,
     IBV_QP_STATE | IBV_QP_TIMEOUT | IBV_QP_SQ_PSN |
     IBV_QP_RETRY_CNT | IBV_QP_RNR_RETRY | IBV_QP_MAX_QP_RD_ATOMIC)) {
  fprintf(stderr, "Failed to modify send QP[%d] to RTS\n", index);
  return 1;
 }

 return 0;
}
