
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_mr {TYPE_1__* context; int handle; } ;
struct ibv_dereg_mr {int mr_handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int DEREG_MR ;
 int IBV_INIT_CMD (struct ibv_dereg_mr*,int,int ) ;
 int errno ;
 int write (int ,struct ibv_dereg_mr*,int) ;

int ibv_cmd_dereg_mr(struct ibv_mr *mr)
{
 struct ibv_dereg_mr cmd;

 IBV_INIT_CMD(&cmd, sizeof cmd, DEREG_MR);
 cmd.mr_handle = mr->handle;

 if (write(mr->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
  return errno;

 return 0;
}
