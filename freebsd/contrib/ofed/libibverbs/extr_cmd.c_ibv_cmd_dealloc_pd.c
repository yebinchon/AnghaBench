
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_pd {TYPE_1__* context; int handle; } ;
struct ibv_dealloc_pd {int pd_handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int DEALLOC_PD ;
 int IBV_INIT_CMD (struct ibv_dealloc_pd*,int,int ) ;
 int errno ;
 int write (int ,struct ibv_dealloc_pd*,int) ;

int ibv_cmd_dealloc_pd(struct ibv_pd *pd)
{
 struct ibv_dealloc_pd cmd;

 IBV_INIT_CMD(&cmd, sizeof cmd, DEALLOC_PD);
 cmd.pd_handle = pd->handle;

 if (write(pd->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
  return errno;

 return 0;
}
