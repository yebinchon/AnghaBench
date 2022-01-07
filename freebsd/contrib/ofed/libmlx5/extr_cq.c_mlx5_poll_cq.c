
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_wc {int dummy; } ;
struct ibv_cq {int dummy; } ;


 int poll_cq (struct ibv_cq*,int,struct ibv_wc*,int ) ;

int mlx5_poll_cq(struct ibv_cq *ibcq, int ne, struct ibv_wc *wc)
{
 return poll_cq(ibcq, ne, wc, 0);
}
