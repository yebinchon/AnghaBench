
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_destroy_cq_resp {scalar_t__ comp_events_reported; scalar_t__ async_events_reported; } ;
struct ibv_destroy_cq {scalar_t__ reserved; int cq_handle; } ;
struct ibv_cq {scalar_t__ comp_events_completed; scalar_t__ async_events_completed; int mutex; int cond; TYPE_1__* context; int handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int DESTROY_CQ ;
 int IBV_INIT_CMD_RESP (struct ibv_destroy_cq*,int,int ,struct ibv_destroy_cq_resp*,int) ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_destroy_cq_resp*,int) ;
 int errno ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int write (int ,struct ibv_destroy_cq*,int) ;

int ibv_cmd_destroy_cq(struct ibv_cq *cq)
{
 struct ibv_destroy_cq cmd;
 struct ibv_destroy_cq_resp resp;

 IBV_INIT_CMD_RESP(&cmd, sizeof cmd, DESTROY_CQ, &resp, sizeof resp);
 cmd.cq_handle = cq->handle;
 cmd.reserved = 0;

 if (write(cq->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(&resp, sizeof resp);

 pthread_mutex_lock(&cq->mutex);
 while (cq->comp_events_completed != resp.comp_events_reported ||
        cq->async_events_completed != resp.async_events_reported)
  pthread_cond_wait(&cq->cond, &cq->mutex);
 pthread_mutex_unlock(&cq->mutex);

 return 0;
}
