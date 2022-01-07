
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_req_notify_cq {int solicited; int cq_handle; } ;
struct ibv_cq {TYPE_1__* context; int handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int IBV_INIT_CMD (struct ibv_req_notify_cq*,int,int ) ;
 int REQ_NOTIFY_CQ ;
 int errno ;
 int write (int ,struct ibv_req_notify_cq*,int) ;

int ibv_cmd_req_notify_cq(struct ibv_cq *ibcq, int solicited_only)
{
 struct ibv_req_notify_cq cmd;

 IBV_INIT_CMD(&cmd, sizeof cmd, REQ_NOTIFY_CQ);
 cmd.cq_handle = ibcq->handle;
 cmd.solicited = !!solicited_only;

 if (write(ibcq->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
  return errno;

 return 0;
}
