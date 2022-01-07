
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_destroy_ah {int ah_handle; } ;
struct ibv_ah {TYPE_1__* context; int handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int DESTROY_AH ;
 int IBV_INIT_CMD (struct ibv_destroy_ah*,int,int ) ;
 int errno ;
 int write (int ,struct ibv_destroy_ah*,int) ;

int ibv_cmd_destroy_ah(struct ibv_ah *ah)
{
 struct ibv_destroy_ah cmd;

 IBV_INIT_CMD(&cmd, sizeof cmd, DESTROY_AH);
 cmd.ah_handle = ah->handle;

 if (write(ah->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
  return errno;

 return 0;
}
