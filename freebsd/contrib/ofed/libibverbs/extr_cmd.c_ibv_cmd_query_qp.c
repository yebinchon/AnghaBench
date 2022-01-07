
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_17__ {int port_num; int is_global; int static_rate; int src_path_bits; int sl; int traffic_class; int hop_limit; int sgid_index; int dlid; int flow_label; int dgid; } ;
struct TYPE_13__ {int port_num; int is_global; int static_rate; int src_path_bits; int sl; int traffic_class; int hop_limit; int sgid_index; int dlid; int flow_label; int dgid; } ;
struct ibv_query_qp_resp {int sq_sig_all; int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; TYPE_4__ alt_dest; TYPE_11__ dest; int alt_timeout; int alt_port_num; int rnr_retry; int retry_cnt; int timeout; int port_num; int min_rnr_timer; int max_dest_rd_atomic; int max_rd_atomic; int sq_draining; int path_mig_state; int path_mtu; int cur_qp_state; int qp_state; int alt_pkey_index; int pkey_index; int qp_access_flags; int dest_qp_num; int sq_psn; int rq_psn; int qkey; } ;
struct ibv_query_qp {int attr_mask; int qp_handle; } ;
struct TYPE_18__ {int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; } ;
struct ibv_qp_init_attr {int sq_sig_all; TYPE_5__ cap; int qp_type; int srq; int recv_cq; int send_cq; int qp_context; } ;
struct TYPE_14__ {int raw; } ;
struct TYPE_15__ {int traffic_class; int hop_limit; int sgid_index; int flow_label; TYPE_1__ dgid; } ;
struct TYPE_16__ {int port_num; int is_global; int static_rate; int src_path_bits; int sl; TYPE_2__ grh; int dlid; } ;
struct TYPE_21__ {int raw; } ;
struct TYPE_22__ {int traffic_class; int hop_limit; int sgid_index; int flow_label; TYPE_8__ dgid; } ;
struct TYPE_12__ {int port_num; int is_global; int static_rate; int src_path_bits; int sl; TYPE_9__ grh; int dlid; } ;
struct TYPE_20__ {int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; } ;
struct ibv_qp_attr {TYPE_3__ alt_ah_attr; TYPE_10__ ah_attr; TYPE_7__ cap; int alt_timeout; int alt_port_num; int rnr_retry; int retry_cnt; int timeout; int port_num; int min_rnr_timer; int max_dest_rd_atomic; int max_rd_atomic; int sq_draining; int path_mig_state; int path_mtu; int cur_qp_state; int qp_state; int alt_pkey_index; int pkey_index; int qp_access_flags; int dest_qp_num; int sq_psn; int rq_psn; int qkey; } ;
struct ibv_qp {int qp_type; int srq; int recv_cq; int send_cq; int qp_context; TYPE_6__* context; int handle; } ;
struct TYPE_19__ {int cmd_fd; } ;


 int EOPNOTSUPP ;
 int IBV_INIT_CMD_RESP (struct ibv_query_qp*,size_t,int ,struct ibv_query_qp_resp*,int) ;
 int IBV_QP_DEST_QPN ;
 int QUERY_QP ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_query_qp_resp*,int) ;
 int errno ;
 int memcpy (int ,int ,int) ;
 size_t write (int ,struct ibv_query_qp*,size_t) ;

int ibv_cmd_query_qp(struct ibv_qp *qp, struct ibv_qp_attr *attr,
       int attr_mask,
       struct ibv_qp_init_attr *init_attr,
       struct ibv_query_qp *cmd, size_t cmd_size)
{
 struct ibv_query_qp_resp resp;





 if (attr_mask & ~((IBV_QP_DEST_QPN << 1) - 1))
  return EOPNOTSUPP;

 IBV_INIT_CMD_RESP(cmd, cmd_size, QUERY_QP, &resp, sizeof resp);
 cmd->qp_handle = qp->handle;
 cmd->attr_mask = attr_mask;

 if (write(qp->context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(&resp, sizeof resp);

 attr->qkey = resp.qkey;
 attr->rq_psn = resp.rq_psn;
 attr->sq_psn = resp.sq_psn;
 attr->dest_qp_num = resp.dest_qp_num;
 attr->qp_access_flags = resp.qp_access_flags;
 attr->pkey_index = resp.pkey_index;
 attr->alt_pkey_index = resp.alt_pkey_index;
 attr->qp_state = resp.qp_state;
 attr->cur_qp_state = resp.cur_qp_state;
 attr->path_mtu = resp.path_mtu;
 attr->path_mig_state = resp.path_mig_state;
 attr->sq_draining = resp.sq_draining;
 attr->max_rd_atomic = resp.max_rd_atomic;
 attr->max_dest_rd_atomic = resp.max_dest_rd_atomic;
 attr->min_rnr_timer = resp.min_rnr_timer;
 attr->port_num = resp.port_num;
 attr->timeout = resp.timeout;
 attr->retry_cnt = resp.retry_cnt;
 attr->rnr_retry = resp.rnr_retry;
 attr->alt_port_num = resp.alt_port_num;
 attr->alt_timeout = resp.alt_timeout;
 attr->cap.max_send_wr = resp.max_send_wr;
 attr->cap.max_recv_wr = resp.max_recv_wr;
 attr->cap.max_send_sge = resp.max_send_sge;
 attr->cap.max_recv_sge = resp.max_recv_sge;
 attr->cap.max_inline_data = resp.max_inline_data;

 memcpy(attr->ah_attr.grh.dgid.raw, resp.dest.dgid, 16);
 attr->ah_attr.grh.flow_label = resp.dest.flow_label;
 attr->ah_attr.dlid = resp.dest.dlid;
 attr->ah_attr.grh.sgid_index = resp.dest.sgid_index;
 attr->ah_attr.grh.hop_limit = resp.dest.hop_limit;
 attr->ah_attr.grh.traffic_class = resp.dest.traffic_class;
 attr->ah_attr.sl = resp.dest.sl;
 attr->ah_attr.src_path_bits = resp.dest.src_path_bits;
 attr->ah_attr.static_rate = resp.dest.static_rate;
 attr->ah_attr.is_global = resp.dest.is_global;
 attr->ah_attr.port_num = resp.dest.port_num;

 memcpy(attr->alt_ah_attr.grh.dgid.raw, resp.alt_dest.dgid, 16);
 attr->alt_ah_attr.grh.flow_label = resp.alt_dest.flow_label;
 attr->alt_ah_attr.dlid = resp.alt_dest.dlid;
 attr->alt_ah_attr.grh.sgid_index = resp.alt_dest.sgid_index;
 attr->alt_ah_attr.grh.hop_limit = resp.alt_dest.hop_limit;
 attr->alt_ah_attr.grh.traffic_class = resp.alt_dest.traffic_class;
 attr->alt_ah_attr.sl = resp.alt_dest.sl;
 attr->alt_ah_attr.src_path_bits = resp.alt_dest.src_path_bits;
 attr->alt_ah_attr.static_rate = resp.alt_dest.static_rate;
 attr->alt_ah_attr.is_global = resp.alt_dest.is_global;
 attr->alt_ah_attr.port_num = resp.alt_dest.port_num;

 init_attr->qp_context = qp->qp_context;
 init_attr->send_cq = qp->send_cq;
 init_attr->recv_cq = qp->recv_cq;
 init_attr->srq = qp->srq;
 init_attr->qp_type = qp->qp_type;
 init_attr->cap.max_send_wr = resp.max_send_wr;
 init_attr->cap.max_recv_wr = resp.max_recv_wr;
 init_attr->cap.max_send_sge = resp.max_send_sge;
 init_attr->cap.max_recv_sge = resp.max_recv_sge;
 init_attr->cap.max_inline_data = resp.max_inline_data;
 init_attr->sq_sig_all = resp.sq_sig_all;

 return 0;
}
