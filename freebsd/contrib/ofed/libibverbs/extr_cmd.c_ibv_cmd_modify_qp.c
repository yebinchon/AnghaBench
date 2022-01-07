
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_qp_attr {int dummy; } ;
struct ibv_qp {TYPE_1__* context; } ;
struct ibv_modify_qp {int base; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int EOPNOTSUPP ;
 int IBV_INIT_CMD (struct ibv_modify_qp*,size_t,int ) ;
 int IBV_QP_DEST_QPN ;
 int MODIFY_QP ;
 int copy_modify_qp_fields (struct ibv_qp*,struct ibv_qp_attr*,int,int *) ;
 int errno ;
 size_t write (int ,struct ibv_modify_qp*,size_t) ;

int ibv_cmd_modify_qp(struct ibv_qp *qp, struct ibv_qp_attr *attr,
        int attr_mask,
        struct ibv_modify_qp *cmd, size_t cmd_size)
{




 if (attr_mask & ~((IBV_QP_DEST_QPN << 1) - 1))
  return EOPNOTSUPP;

 IBV_INIT_CMD(cmd, cmd_size, MODIFY_QP);

 copy_modify_qp_fields(qp, attr, attr_mask, &cmd->base);

 if (write(qp->context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 return 0;
}
