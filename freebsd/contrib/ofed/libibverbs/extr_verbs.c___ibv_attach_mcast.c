
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ibv_gid {int dummy; } ibv_gid ;
typedef int uint16_t ;
struct ibv_qp {TYPE_2__* context; } ;
struct TYPE_3__ {int (* attach_mcast ) (struct ibv_qp*,union ibv_gid const*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (struct ibv_qp*,union ibv_gid const*,int ) ;

int __ibv_attach_mcast(struct ibv_qp *qp, const union ibv_gid *gid, uint16_t lid)
{
 return qp->context->ops.attach_mcast(qp, gid, lid);
}
