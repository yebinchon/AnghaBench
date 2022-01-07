
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ibv_reg_mr_resp {int rkey; int lkey; int mr_handle; } ;
struct ibv_reg_mr {uintptr_t start; size_t length; int access_flags; int pd_handle; int hca_va; } ;
struct ibv_pd {TYPE_1__* context; int handle; } ;
struct ibv_mr {TYPE_1__* context; int rkey; int lkey; int handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int IBV_INIT_CMD_RESP (struct ibv_reg_mr*,size_t,int ,struct ibv_reg_mr_resp*,size_t) ;
 int REG_MR ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_reg_mr_resp*,size_t) ;
 int errno ;
 size_t write (int ,struct ibv_reg_mr*,size_t) ;

int ibv_cmd_reg_mr(struct ibv_pd *pd, void *addr, size_t length,
     uint64_t hca_va, int access,
     struct ibv_mr *mr, struct ibv_reg_mr *cmd,
     size_t cmd_size,
     struct ibv_reg_mr_resp *resp, size_t resp_size)
{

 IBV_INIT_CMD_RESP(cmd, cmd_size, REG_MR, resp, resp_size);

 cmd->start = (uintptr_t) addr;
 cmd->length = length;
 cmd->hca_va = hca_va;
 cmd->pd_handle = pd->handle;
 cmd->access_flags = access;

 if (write(pd->context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(resp, resp_size);

 mr->handle = resp->mr_handle;
 mr->lkey = resp->lkey;
 mr->rkey = resp->rkey;
 mr->context = pd->context;

 return 0;
}
