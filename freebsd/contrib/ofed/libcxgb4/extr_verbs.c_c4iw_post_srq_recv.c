
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_srq {int dummy; } ;
struct ibv_recv_wr {int dummy; } ;


 int ENOSYS ;

int c4iw_post_srq_recv(struct ibv_srq *ibsrq, struct ibv_recv_wr *wr,
         struct ibv_recv_wr **bad_wr)
{
 return ENOSYS;
}
