
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* context; } ;
struct verbs_xrcd {TYPE_2__ xrcd; int handle; } ;
struct ibv_close_xrcd {int xrcd_handle; } ;
struct TYPE_3__ {int cmd_fd; } ;


 int CLOSE_XRCD ;
 int IBV_INIT_CMD (struct ibv_close_xrcd*,int,int ) ;
 int errno ;
 int write (int ,struct ibv_close_xrcd*,int) ;

int ibv_cmd_close_xrcd(struct verbs_xrcd *xrcd)
{
 struct ibv_close_xrcd cmd;

 IBV_INIT_CMD(&cmd, sizeof cmd, CLOSE_XRCD);
 cmd.xrcd_handle = xrcd->handle;

 if (write(xrcd->xrcd.context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
  return errno;

 return 0;
}
