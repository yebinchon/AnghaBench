
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ibv_rereg_mr_resp {int rkey; int lkey; } ;
struct ibv_rereg_mr {int flags; uintptr_t start; size_t length; int access_flags; int pd_handle; int hca_va; int mr_handle; } ;
struct ibv_pd {TYPE_1__* context; int handle; } ;
struct ibv_mr {TYPE_1__* context; int rkey; int lkey; int handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int IBV_INIT_CMD_RESP (struct ibv_rereg_mr*,size_t,int ,struct ibv_rereg_mr_resp*,size_t) ;
 int IBV_REREG_MR_CHANGE_PD ;
 int REREG_MR ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_rereg_mr_resp*,size_t) ;
 int errno ;
 size_t write (int ,struct ibv_rereg_mr*,size_t) ;

int ibv_cmd_rereg_mr(struct ibv_mr *mr, uint32_t flags, void *addr,
       size_t length, uint64_t hca_va, int access,
       struct ibv_pd *pd, struct ibv_rereg_mr *cmd,
       size_t cmd_sz, struct ibv_rereg_mr_resp *resp,
       size_t resp_sz)
{
 IBV_INIT_CMD_RESP(cmd, cmd_sz, REREG_MR, resp, resp_sz);

 cmd->mr_handle = mr->handle;
 cmd->flags = flags;
 cmd->start = (uintptr_t)addr;
 cmd->length = length;
 cmd->hca_va = hca_va;
 cmd->pd_handle = (flags & IBV_REREG_MR_CHANGE_PD) ? pd->handle : 0;
 cmd->access_flags = access;

 if (write(mr->context->cmd_fd, cmd, cmd_sz) != cmd_sz)
  return errno;

 (void)VALGRIND_MAKE_MEM_DEFINED(resp, resp_sz);

 mr->lkey = resp->lkey;
 mr->rkey = resp->rkey;
 if (flags & IBV_REREG_MR_CHANGE_PD)
  mr->context = pd->context;

 return 0;
}
