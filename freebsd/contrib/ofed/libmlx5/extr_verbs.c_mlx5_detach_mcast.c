
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ibv_gid {int dummy; } ibv_gid ;
typedef int uint16_t ;
struct ibv_qp {int dummy; } ;


 int ibv_cmd_detach_mcast (struct ibv_qp*,union ibv_gid const*,int ) ;

int mlx5_detach_mcast(struct ibv_qp *qp, const union ibv_gid *gid, uint16_t lid)
{
 return ibv_cmd_detach_mcast(qp, gid, lid);
}
