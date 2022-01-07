
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_resize_cq_resp {int cqe; } ;
struct ibv_resize_cq {int cqe; int cq_handle; } ;
struct ibv_cq {int cqe; TYPE_1__* context; int handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int IBV_INIT_CMD_RESP (struct ibv_resize_cq*,size_t,int ,struct ibv_resize_cq_resp*,size_t) ;
 int RESIZE_CQ ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_resize_cq_resp*,size_t) ;
 int errno ;
 size_t write (int ,struct ibv_resize_cq*,size_t) ;

int ibv_cmd_resize_cq(struct ibv_cq *cq, int cqe,
        struct ibv_resize_cq *cmd, size_t cmd_size,
        struct ibv_resize_cq_resp *resp, size_t resp_size)
{
 IBV_INIT_CMD_RESP(cmd, cmd_size, RESIZE_CQ, resp, resp_size);
 cmd->cq_handle = cq->handle;
 cmd->cqe = cqe;

 if (write(cq->context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(resp, resp_size);

 cq->cqe = resp->cqe;

 return 0;
}
