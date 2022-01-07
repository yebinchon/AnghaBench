
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_mw {TYPE_1__* context; int handle; } ;
struct ibv_dealloc_mw {scalar_t__ reserved; int mw_handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int DEALLOC_MW ;
 int IBV_INIT_CMD (struct ibv_dealloc_mw*,size_t,int ) ;
 int errno ;
 size_t write (int ,struct ibv_dealloc_mw*,size_t) ;

int ibv_cmd_dealloc_mw(struct ibv_mw *mw,
         struct ibv_dealloc_mw *cmd, size_t cmd_size)
{
 IBV_INIT_CMD(cmd, cmd_size, DEALLOC_MW);
 cmd->mw_handle = mw->handle;
 cmd->reserved = 0;

 if (write(mw->context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 return 0;
}
