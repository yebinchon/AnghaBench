
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_srq {scalar_t__ events_completed; int mutex; int cond; TYPE_1__* context; int handle; } ;
struct ibv_destroy_srq_resp {scalar_t__ events_reported; } ;
struct ibv_destroy_srq {scalar_t__ reserved; int srq_handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int DESTROY_SRQ ;
 int IBV_INIT_CMD_RESP (struct ibv_destroy_srq*,int,int ,struct ibv_destroy_srq_resp*,int) ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_destroy_srq_resp*,int) ;
 int errno ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int write (int ,struct ibv_destroy_srq*,int) ;

int ibv_cmd_destroy_srq(struct ibv_srq *srq)
{
 struct ibv_destroy_srq cmd;
 struct ibv_destroy_srq_resp resp;

 IBV_INIT_CMD_RESP(&cmd, sizeof cmd, DESTROY_SRQ, &resp, sizeof resp);
 cmd.srq_handle = srq->handle;
 cmd.reserved = 0;

 if (write(srq->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(&resp, sizeof resp);

 pthread_mutex_lock(&srq->mutex);
 while (srq->events_completed != resp.events_reported)
  pthread_cond_wait(&srq->cond, &srq->mutex);
 pthread_mutex_unlock(&srq->mutex);

 return 0;
}
