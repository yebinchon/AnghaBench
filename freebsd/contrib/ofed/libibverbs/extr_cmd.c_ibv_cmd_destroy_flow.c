
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_flow {TYPE_1__* context; int handle; } ;
struct ibv_destroy_flow {int flow_handle; } ;
typedef int cmd ;
struct TYPE_2__ {int cmd_fd; } ;


 int DESTROY_FLOW ;
 int IBV_INIT_CMD_EX (struct ibv_destroy_flow*,int,int ) ;
 int errno ;
 int free (struct ibv_flow*) ;
 int memset (struct ibv_destroy_flow*,int ,int) ;
 int write (int ,struct ibv_destroy_flow*,int) ;

int ibv_cmd_destroy_flow(struct ibv_flow *flow_id)
{
 struct ibv_destroy_flow cmd;
 int ret = 0;

 memset(&cmd, 0, sizeof(cmd));
 IBV_INIT_CMD_EX(&cmd, sizeof(cmd), DESTROY_FLOW);
 cmd.flow_handle = flow_id->handle;

 if (write(flow_id->context->cmd_fd, &cmd, sizeof(cmd)) != sizeof(cmd))
  ret = errno;
 free(flow_id);
 return ret;
}
