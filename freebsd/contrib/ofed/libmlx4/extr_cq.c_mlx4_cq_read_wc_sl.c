
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mlx4_cq {TYPE_2__* cqe; TYPE_1__* cur_qp; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_4__ {int sl_vid; } ;
struct TYPE_3__ {scalar_t__ link_layer; } ;


 scalar_t__ IBV_LINK_LAYER_ETHERNET ;
 int be16toh (int ) ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 struct mlx4_cq* to_mcq (int ) ;

__attribute__((used)) static uint8_t mlx4_cq_read_wc_sl(struct ibv_cq_ex *ibcq)
{
 struct mlx4_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));

 if ((cq->cur_qp) && (cq->cur_qp->link_layer == IBV_LINK_LAYER_ETHERNET))
  return be16toh(cq->cqe->sl_vid) >> 13;
 else
  return be16toh(cq->cqe->sl_vid) >> 12;
}
