
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cqe {int owner_sr_opcode; int byte_cnt; } ;
struct ibv_wc {int byte_len; void* opcode; scalar_t__ wc_flags; } ;


 void* IBV_WC_BIND_MW ;
 void* IBV_WC_COMP_SWAP ;
 void* IBV_WC_FETCH_ADD ;
 void* IBV_WC_LOCAL_INV ;
 void* IBV_WC_RDMA_READ ;
 void* IBV_WC_RDMA_WRITE ;
 void* IBV_WC_SEND ;
 scalar_t__ IBV_WC_WITH_IMM ;
 int MLX4_CQE_OPCODE_MASK ;
 int SWITCH_FALLTHROUGH ;
 int be32toh (int ) ;

__attribute__((used)) static inline void handle_good_req(struct ibv_wc *wc, struct mlx4_cqe *cqe)
{
 wc->wc_flags = 0;
 switch (cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) {
 case 131:
  wc->wc_flags |= IBV_WC_WITH_IMM;
  SWITCH_FALLTHROUGH;
 case 132:
  wc->opcode = IBV_WC_RDMA_WRITE;
  break;
 case 129:
  wc->wc_flags |= IBV_WC_WITH_IMM;
  SWITCH_FALLTHROUGH;
 case 130:
 case 128:
  wc->opcode = IBV_WC_SEND;
  break;
 case 133:
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
 case 134:
  wc->opcode = IBV_WC_LOCAL_INV;
  break;
 case 135:
  wc->opcode = IBV_WC_BIND_MW;
  break;
 default:

  wc->opcode = IBV_WC_SEND;
  break;
 }
}
