
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_srq_attr {int srq_limit; int max_wr; } ;
struct ibv_srq {TYPE_1__* context; int handle; } ;
struct ibv_modify_srq_v3 {int attr_mask; scalar_t__ reserved; scalar_t__ max_sge; int srq_limit; int max_wr; int srq_handle; int driver_data; } ;
struct ibv_modify_srq {int driver_data; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int IBV_INIT_CMD (struct ibv_modify_srq_v3*,size_t,int ) ;
 int MODIFY_SRQ ;
 struct ibv_modify_srq_v3* alloca (size_t) ;
 int errno ;
 int memcpy (int ,int ,size_t) ;
 size_t write (int ,struct ibv_modify_srq_v3*,size_t) ;

__attribute__((used)) static int ibv_cmd_modify_srq_v3(struct ibv_srq *srq,
     struct ibv_srq_attr *srq_attr,
     int srq_attr_mask,
     struct ibv_modify_srq *new_cmd,
     size_t new_cmd_size)
{
 struct ibv_modify_srq_v3 *cmd;
 size_t cmd_size;

 cmd_size = sizeof *cmd + new_cmd_size - sizeof *new_cmd;
 cmd = alloca(cmd_size);
 memcpy(cmd->driver_data, new_cmd->driver_data, new_cmd_size - sizeof *new_cmd);

 IBV_INIT_CMD(cmd, cmd_size, MODIFY_SRQ);

 cmd->srq_handle = srq->handle;
 cmd->attr_mask = srq_attr_mask;
 cmd->max_wr = srq_attr->max_wr;
 cmd->srq_limit = srq_attr->srq_limit;
 cmd->max_sge = 0;
 cmd->reserved = 0;

 if (write(srq->context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 return 0;
}
