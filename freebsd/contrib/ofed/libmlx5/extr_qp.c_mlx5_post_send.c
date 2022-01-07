
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* mr; int length; int addr; } ;
struct TYPE_6__ {TYPE_1__* mw; TYPE_4__ bind_info; } ;
struct ibv_send_wr {scalar_t__ opcode; TYPE_2__ bind_mw; } ;
struct ibv_qp {int dummy; } ;
struct TYPE_7__ {scalar_t__ pd; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ pd; } ;


 int EINVAL ;
 scalar_t__ IBV_MW_TYPE_1 ;
 scalar_t__ IBV_WR_BIND_MW ;
 int _mlx5_post_send (struct ibv_qp*,struct ibv_send_wr*,struct ibv_send_wr**) ;

int mlx5_post_send(struct ibv_qp *ibqp, struct ibv_send_wr *wr,
     struct ibv_send_wr **bad_wr)
{
 return _mlx5_post_send(ibqp, wr, bad_wr);
}
