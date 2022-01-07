
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ibv_gid {int dummy; } ibv_gid ;
typedef int uint16_t ;
struct ibv_qp_1_0 {int real_qp; } ;


 int ibv_attach_mcast (int ,union ibv_gid*,int ) ;

int __ibv_attach_mcast_1_0(struct ibv_qp_1_0 *qp, union ibv_gid *gid, uint16_t lid)
{
 return ibv_attach_mcast(qp->real_qp, gid, lid);
}
