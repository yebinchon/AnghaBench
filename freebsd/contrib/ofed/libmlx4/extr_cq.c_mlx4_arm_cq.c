
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx4_cq {int arm_sn; int cons_index; int cqn; void** arm_db; } ;
struct ibv_cq {int context; } ;


 int MLX4_CQ_DB_REQ_NOT ;
 int MLX4_CQ_DB_REQ_NOT_SOL ;
 int MLX4_CQ_DOORBELL ;
 void* htobe32 (int) ;
 int mlx4_write64 (int*,int ,int ) ;
 struct mlx4_cq* to_mcq (struct ibv_cq*) ;
 int to_mctx (int ) ;
 int udma_to_device_barrier () ;

int mlx4_arm_cq(struct ibv_cq *ibvcq, int solicited)
{
 struct mlx4_cq *cq = to_mcq(ibvcq);
 uint32_t doorbell[2];
 uint32_t sn;
 uint32_t ci;
 uint32_t cmd;

 sn = cq->arm_sn & 3;
 ci = cq->cons_index & 0xffffff;
 cmd = solicited ? MLX4_CQ_DB_REQ_NOT_SOL : MLX4_CQ_DB_REQ_NOT;

 *cq->arm_db = htobe32(sn << 28 | cmd | ci);





 udma_to_device_barrier();

 doorbell[0] = htobe32(sn << 28 | cmd | cq->cqn);
 doorbell[1] = htobe32(ci);

 mlx4_write64(doorbell, to_mctx(ibvcq->context), MLX4_CQ_DOORBELL);

 return 0;
}
