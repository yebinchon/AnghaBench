
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_srq_attr {int srq_limit; int max_wr; } ;
struct ibv_srq {TYPE_1__* context; int handle; } ;
struct ibv_modify_srq {int attr_mask; int srq_limit; int max_wr; int srq_handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int IBV_INIT_CMD (struct ibv_modify_srq*,size_t,int ) ;
 int MODIFY_SRQ ;
 int abi_ver ;
 int errno ;
 int ibv_cmd_modify_srq_v3 (struct ibv_srq*,struct ibv_srq_attr*,int,struct ibv_modify_srq*,size_t) ;
 size_t write (int ,struct ibv_modify_srq*,size_t) ;

int ibv_cmd_modify_srq(struct ibv_srq *srq,
         struct ibv_srq_attr *srq_attr,
         int srq_attr_mask,
         struct ibv_modify_srq *cmd, size_t cmd_size)
{
 if (abi_ver == 3)
  return ibv_cmd_modify_srq_v3(srq, srq_attr, srq_attr_mask,
          cmd, cmd_size);

 IBV_INIT_CMD(cmd, cmd_size, MODIFY_SRQ);

 cmd->srq_handle = srq->handle;
 cmd->attr_mask = srq_attr_mask;
 cmd->max_wr = srq_attr->max_wr;
 cmd->srq_limit = srq_attr->srq_limit;

 if (write(srq->context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 return 0;
}
