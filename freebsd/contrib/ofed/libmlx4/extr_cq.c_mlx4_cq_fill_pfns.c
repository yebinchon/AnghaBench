
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_completion_ts; int read_dlid_path_bits; int read_sl; int read_slid; int read_src_qp; int read_qp_num; int read_imm_data; int read_byte_len; int read_wc_flags; int read_vendor_err; int read_opcode; int next_poll; int end_poll; int start_poll; } ;
struct mlx4_cq {int flags; TYPE_1__ ibv_cq; } ;
struct ibv_cq_init_attr_ex {int wc_flags; } ;


 int IBV_WC_EX_WITH_BYTE_LEN ;
 int IBV_WC_EX_WITH_COMPLETION_TIMESTAMP ;
 int IBV_WC_EX_WITH_DLID_PATH_BITS ;
 int IBV_WC_EX_WITH_IMM ;
 int IBV_WC_EX_WITH_QP_NUM ;
 int IBV_WC_EX_WITH_SL ;
 int IBV_WC_EX_WITH_SLID ;
 int IBV_WC_EX_WITH_SRC_QP ;
 int MLX4_CQ_FLAGS_SINGLE_THREADED ;
 int mlx4_cq_read_wc_byte_len ;
 int mlx4_cq_read_wc_completion_ts ;
 int mlx4_cq_read_wc_dlid_path_bits ;
 int mlx4_cq_read_wc_flags ;
 int mlx4_cq_read_wc_imm_data ;
 int mlx4_cq_read_wc_opcode ;
 int mlx4_cq_read_wc_qp_num ;
 int mlx4_cq_read_wc_sl ;
 int mlx4_cq_read_wc_slid ;
 int mlx4_cq_read_wc_src_qp ;
 int mlx4_cq_read_wc_vendor_err ;
 int mlx4_end_poll ;
 int mlx4_end_poll_lock ;
 int mlx4_next_poll ;
 int mlx4_start_poll ;
 int mlx4_start_poll_lock ;

void mlx4_cq_fill_pfns(struct mlx4_cq *cq, const struct ibv_cq_init_attr_ex *cq_attr)
{

 if (cq->flags & MLX4_CQ_FLAGS_SINGLE_THREADED) {
  cq->ibv_cq.start_poll = mlx4_start_poll;
  cq->ibv_cq.end_poll = mlx4_end_poll;
 } else {
  cq->ibv_cq.start_poll = mlx4_start_poll_lock;
  cq->ibv_cq.end_poll = mlx4_end_poll_lock;
 }
 cq->ibv_cq.next_poll = mlx4_next_poll;

 cq->ibv_cq.read_opcode = mlx4_cq_read_wc_opcode;
 cq->ibv_cq.read_vendor_err = mlx4_cq_read_wc_vendor_err;
 cq->ibv_cq.read_wc_flags = mlx4_cq_read_wc_flags;
 if (cq_attr->wc_flags & IBV_WC_EX_WITH_BYTE_LEN)
  cq->ibv_cq.read_byte_len = mlx4_cq_read_wc_byte_len;
 if (cq_attr->wc_flags & IBV_WC_EX_WITH_IMM)
  cq->ibv_cq.read_imm_data = mlx4_cq_read_wc_imm_data;
 if (cq_attr->wc_flags & IBV_WC_EX_WITH_QP_NUM)
  cq->ibv_cq.read_qp_num = mlx4_cq_read_wc_qp_num;
 if (cq_attr->wc_flags & IBV_WC_EX_WITH_SRC_QP)
  cq->ibv_cq.read_src_qp = mlx4_cq_read_wc_src_qp;
 if (cq_attr->wc_flags & IBV_WC_EX_WITH_SLID)
  cq->ibv_cq.read_slid = mlx4_cq_read_wc_slid;
 if (cq_attr->wc_flags & IBV_WC_EX_WITH_SL)
  cq->ibv_cq.read_sl = mlx4_cq_read_wc_sl;
 if (cq_attr->wc_flags & IBV_WC_EX_WITH_DLID_PATH_BITS)
  cq->ibv_cq.read_dlid_path_bits = mlx4_cq_read_wc_dlid_path_bits;
 if (cq_attr->wc_flags & IBV_WC_EX_WITH_COMPLETION_TIMESTAMP)
  cq->ibv_cq.read_completion_ts = mlx4_cq_read_wc_completion_ts;
}
