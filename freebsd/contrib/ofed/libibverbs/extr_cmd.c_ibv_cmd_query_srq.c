
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_srq_attr {int srq_limit; int max_sge; int max_wr; } ;
struct ibv_srq {TYPE_1__* context; int handle; } ;
struct ibv_query_srq_resp {int srq_limit; int max_sge; int max_wr; } ;
struct ibv_query_srq {scalar_t__ reserved; int srq_handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int IBV_INIT_CMD_RESP (struct ibv_query_srq*,size_t,int ,struct ibv_query_srq_resp*,int) ;
 int QUERY_SRQ ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_query_srq_resp*,int) ;
 int errno ;
 size_t write (int ,struct ibv_query_srq*,size_t) ;

int ibv_cmd_query_srq(struct ibv_srq *srq, struct ibv_srq_attr *srq_attr,
        struct ibv_query_srq *cmd, size_t cmd_size)
{
 struct ibv_query_srq_resp resp;

 IBV_INIT_CMD_RESP(cmd, cmd_size, QUERY_SRQ, &resp, sizeof resp);
 cmd->srq_handle = srq->handle;
 cmd->reserved = 0;

 if (write(srq->context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(&resp, sizeof resp);

 srq_attr->max_wr = resp.max_wr;
 srq_attr->max_sge = resp.max_sge;
 srq_attr->srq_limit = resp.srq_limit;

 return 0;
}
