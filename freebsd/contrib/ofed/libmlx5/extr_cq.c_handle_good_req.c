
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wq {int * wr_data; } ;
struct mlx5_cqe64 {int byte_cnt; int sop_drop_qpn; } ;
struct ibv_wc {int byte_len; int opcode; int wc_flags; } ;


 int IBV_WC_COMP_SWAP ;
 int IBV_WC_FETCH_ADD ;
 int IBV_WC_RDMA_READ ;
 int IBV_WC_RDMA_WRITE ;
 int IBV_WC_SEND ;
 int IBV_WC_TSO ;
 int IBV_WC_WITH_IMM ;
 int SWITCH_FALLTHROUGH ;
 int be32toh (int ) ;

__attribute__((used)) static inline void handle_good_req(struct ibv_wc *wc, struct mlx5_cqe64 *cqe, struct mlx5_wq *wq, int idx)
{
 switch (be32toh(cqe->sop_drop_qpn) >> 24) {
 case 133:
  wc->wc_flags |= IBV_WC_WITH_IMM;
  SWITCH_FALLTHROUGH;
 case 134:
  wc->opcode = IBV_WC_RDMA_WRITE;
  break;
 case 131:
  wc->wc_flags |= IBV_WC_WITH_IMM;
  SWITCH_FALLTHROUGH;
 case 132:
 case 130:
  wc->opcode = IBV_WC_SEND;
  break;
 case 135:
  wc->opcode = IBV_WC_RDMA_READ;
  wc->byte_len = be32toh(cqe->byte_cnt);
  break;
 case 137:
  wc->opcode = IBV_WC_COMP_SWAP;
  wc->byte_len = 8;
  break;
 case 136:
  wc->opcode = IBV_WC_FETCH_ADD;
  wc->byte_len = 8;
  break;
 case 128:
  wc->opcode = wq->wr_data[idx];
  break;
 case 129:
  wc->opcode = IBV_WC_TSO;
  break;
 }
}
