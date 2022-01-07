
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_qp {scalar_t__ events_completed; int mutex; int cond; TYPE_1__* context; int handle; } ;
struct ibv_destroy_qp_resp {scalar_t__ events_reported; } ;
struct ibv_destroy_qp {scalar_t__ reserved; int qp_handle; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int DESTROY_QP ;
 int IBV_INIT_CMD_RESP (struct ibv_destroy_qp*,int,int ,struct ibv_destroy_qp_resp*,int) ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_destroy_qp_resp*,int) ;
 int errno ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int write (int ,struct ibv_destroy_qp*,int) ;

int ibv_cmd_destroy_qp(struct ibv_qp *qp)
{
 struct ibv_destroy_qp cmd;
 struct ibv_destroy_qp_resp resp;

 IBV_INIT_CMD_RESP(&cmd, sizeof cmd, DESTROY_QP, &resp, sizeof resp);
 cmd.qp_handle = qp->handle;
 cmd.reserved = 0;

 if (write(qp->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(&resp, sizeof resp);

 pthread_mutex_lock(&qp->mutex);
 while (qp->events_completed != resp.events_reported)
  pthread_cond_wait(&qp->cond, &qp->mutex);
 pthread_mutex_unlock(&qp->mutex);

 return 0;
}
