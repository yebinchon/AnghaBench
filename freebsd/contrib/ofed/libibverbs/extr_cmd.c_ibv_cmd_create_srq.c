
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_sge; int max_wr; int srq_limit; } ;
struct ibv_srq_init_attr {TYPE_2__ attr; } ;
struct ibv_srq {TYPE_1__* context; int handle; } ;
struct ibv_pd {TYPE_1__* context; int handle; } ;
struct ibv_create_srq_resp_v5 {int dummy; } ;
struct ibv_create_srq_resp {int max_sge; int max_wr; int srq_handle; } ;
struct ibv_create_srq {uintptr_t user_handle; int srq_limit; int max_sge; int max_wr; int pd_handle; } ;
struct TYPE_3__ {int cmd_fd; } ;


 int CREATE_SRQ ;
 int IBV_INIT_CMD_RESP (struct ibv_create_srq*,size_t,int ,struct ibv_create_srq_resp*,size_t) ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_create_srq_resp*,size_t) ;
 int abi_ver ;
 int errno ;
 int memmove (void*,void*,size_t) ;
 size_t write (int ,struct ibv_create_srq*,size_t) ;

int ibv_cmd_create_srq(struct ibv_pd *pd,
         struct ibv_srq *srq, struct ibv_srq_init_attr *attr,
         struct ibv_create_srq *cmd, size_t cmd_size,
         struct ibv_create_srq_resp *resp, size_t resp_size)
{
 IBV_INIT_CMD_RESP(cmd, cmd_size, CREATE_SRQ, resp, resp_size);
 cmd->user_handle = (uintptr_t) srq;
 cmd->pd_handle = pd->handle;
 cmd->max_wr = attr->attr.max_wr;
 cmd->max_sge = attr->attr.max_sge;
 cmd->srq_limit = attr->attr.srq_limit;

 if (write(pd->context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(resp, resp_size);

 srq->handle = resp->srq_handle;
 srq->context = pd->context;

 if (abi_ver > 5) {
  attr->attr.max_wr = resp->max_wr;
  attr->attr.max_sge = resp->max_sge;
 } else {
  struct ibv_create_srq_resp_v5 *resp_v5 =
   (struct ibv_create_srq_resp_v5 *) resp;

  memmove((void *) resp + sizeof *resp,
   (void *) resp_v5 + sizeof *resp_v5,
   resp_size - sizeof *resp);
 }

 return 0;
}
