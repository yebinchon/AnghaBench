
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_pd {TYPE_1__* context; int handle; } ;
struct ibv_mw {int type; int handle; int rkey; struct ibv_pd* pd; TYPE_1__* context; } ;
struct ibv_alloc_mw_resp {int mw_handle; int rkey; } ;
struct ibv_alloc_mw {int mw_type; int reserved; int pd_handle; } ;
typedef enum ibv_mw_type { ____Placeholder_ibv_mw_type } ibv_mw_type ;
struct TYPE_2__ {int cmd_fd; } ;


 int ALLOC_MW ;
 int IBV_INIT_CMD_RESP (struct ibv_alloc_mw*,size_t,int ,struct ibv_alloc_mw_resp*,size_t) ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_alloc_mw_resp*,size_t) ;
 int errno ;
 int memset (int ,int ,int) ;
 size_t write (int ,struct ibv_alloc_mw*,size_t) ;

int ibv_cmd_alloc_mw(struct ibv_pd *pd, enum ibv_mw_type type,
       struct ibv_mw *mw, struct ibv_alloc_mw *cmd,
       size_t cmd_size,
       struct ibv_alloc_mw_resp *resp, size_t resp_size)
{
 IBV_INIT_CMD_RESP(cmd, cmd_size, ALLOC_MW, resp, resp_size);
 cmd->pd_handle = pd->handle;
 cmd->mw_type = type;
 memset(cmd->reserved, 0, sizeof(cmd->reserved));

 if (write(pd->context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(resp, resp_size);

 mw->context = pd->context;
 mw->pd = pd;
 mw->rkey = resp->rkey;
 mw->handle = resp->mw_handle;
 mw->type = type;

 return 0;
}
