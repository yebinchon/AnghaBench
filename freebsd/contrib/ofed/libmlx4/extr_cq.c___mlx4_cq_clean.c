
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int srq_num; } ;
struct mlx4_srq {TYPE_1__ verbs_srq; scalar_t__ ext_srq; } ;
struct mlx4_cqe {int owner_sr_opcode; int wqe_index; int vlan_my_qpn; int g_mlpath_rqpn; } ;
struct TYPE_4__ {int cqe; } ;
struct mlx4_cq {int cqe_size; int cons_index; TYPE_2__ ibv_cq; } ;


 int MLX4_CQE_IS_SEND_MASK ;
 int MLX4_CQE_OWNER_MASK ;
 int MLX4_CQE_QPN_MASK ;
 int be16toh (int ) ;
 int be32toh (int ) ;
 struct mlx4_cqe* get_cqe (struct mlx4_cq*,int) ;
 scalar_t__ get_sw_cqe (struct mlx4_cq*,int) ;
 int memcpy (struct mlx4_cqe*,struct mlx4_cqe*,int) ;
 int mlx4_free_srq_wqe (struct mlx4_srq*,int ) ;
 int mlx4_update_cons_index (struct mlx4_cq*) ;
 int udma_to_device_barrier () ;

void __mlx4_cq_clean(struct mlx4_cq *cq, uint32_t qpn, struct mlx4_srq *srq)
{
 struct mlx4_cqe *cqe, *dest;
 uint32_t prod_index;
 uint8_t owner_bit;
 int nfreed = 0;
 int cqe_inc = cq->cqe_size == 64 ? 1 : 0;
 for (prod_index = cq->cons_index; get_sw_cqe(cq, prod_index); ++prod_index)
  if (prod_index == cq->cons_index + cq->ibv_cq.cqe)
   break;





 while ((int) --prod_index - (int) cq->cons_index >= 0) {
  cqe = get_cqe(cq, prod_index & cq->ibv_cq.cqe);
  cqe += cqe_inc;
  if (srq && srq->ext_srq &&
      (be32toh(cqe->g_mlpath_rqpn) & MLX4_CQE_QPN_MASK) == srq->verbs_srq.srq_num &&
      !(cqe->owner_sr_opcode & MLX4_CQE_IS_SEND_MASK)) {
   mlx4_free_srq_wqe(srq, be16toh(cqe->wqe_index));
   ++nfreed;
  } else if ((be32toh(cqe->vlan_my_qpn) & MLX4_CQE_QPN_MASK) == qpn) {
   if (srq && !(cqe->owner_sr_opcode & MLX4_CQE_IS_SEND_MASK))
    mlx4_free_srq_wqe(srq, be16toh(cqe->wqe_index));
   ++nfreed;
  } else if (nfreed) {
   dest = get_cqe(cq, (prod_index + nfreed) & cq->ibv_cq.cqe);
   dest += cqe_inc;
   owner_bit = dest->owner_sr_opcode & MLX4_CQE_OWNER_MASK;
   memcpy(dest, cqe, sizeof *cqe);
   dest->owner_sr_opcode = owner_bit |
    (dest->owner_sr_opcode & ~MLX4_CQE_OWNER_MASK);
  }
 }

 if (nfreed) {
  cq->cons_index += nfreed;




  udma_to_device_barrier();
  mlx4_update_cons_index(cq);
 }
}
