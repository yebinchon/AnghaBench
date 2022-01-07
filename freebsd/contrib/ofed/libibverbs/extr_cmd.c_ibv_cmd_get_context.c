
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_get_context_resp {int num_comp_vectors; int async_fd; } ;
struct ibv_get_context {int dummy; } ;
struct ibv_context {int num_comp_vectors; int async_fd; int cmd_fd; } ;


 int ENOSYS ;
 int GET_CONTEXT ;
 int IBV_INIT_CMD_RESP (struct ibv_get_context*,size_t,int ,struct ibv_get_context_resp*,size_t) ;
 scalar_t__ IB_USER_VERBS_MIN_ABI_VERSION ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_get_context_resp*,size_t) ;
 scalar_t__ abi_ver ;
 int errno ;
 size_t write (int ,struct ibv_get_context*,size_t) ;

int ibv_cmd_get_context(struct ibv_context *context, struct ibv_get_context *cmd,
   size_t cmd_size, struct ibv_get_context_resp *resp,
   size_t resp_size)
{
 if (abi_ver < IB_USER_VERBS_MIN_ABI_VERSION)
  return ENOSYS;

 IBV_INIT_CMD_RESP(cmd, cmd_size, GET_CONTEXT, resp, resp_size);

 if (write(context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(resp, resp_size);

 context->async_fd = resp->async_fd;
 context->num_comp_vectors = resp->num_comp_vectors;

 return 0;
}
