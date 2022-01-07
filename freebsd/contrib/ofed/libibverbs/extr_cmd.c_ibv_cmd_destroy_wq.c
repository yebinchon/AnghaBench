
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_wq {scalar_t__ events_completed; int mutex; int cond; TYPE_1__* context; int handle; } ;
struct ibv_destroy_wq_resp {int response_length; scalar_t__ events_reported; int wq_handle; } ;
struct ibv_destroy_wq {int response_length; scalar_t__ events_reported; int wq_handle; } ;
typedef int resp ;
typedef int cmd ;
struct TYPE_2__ {int cmd_fd; } ;


 int DESTROY_WQ ;
 int EINVAL ;
 int IBV_INIT_CMD_RESP_EX (struct ibv_destroy_wq_resp*,int,int ,struct ibv_destroy_wq_resp*,int) ;
 int errno ;
 int memset (struct ibv_destroy_wq_resp*,int ,int) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int write (int ,struct ibv_destroy_wq_resp*,int) ;

int ibv_cmd_destroy_wq(struct ibv_wq *wq)
{
 struct ibv_destroy_wq cmd;
 struct ibv_destroy_wq_resp resp;
 int ret = 0;

 memset(&cmd, 0, sizeof(cmd));
 memset(&resp, 0, sizeof(resp));

 IBV_INIT_CMD_RESP_EX(&cmd, sizeof(cmd), DESTROY_WQ, &resp, sizeof(resp));
 cmd.wq_handle = wq->handle;

 if (write(wq->context->cmd_fd, &cmd, sizeof(cmd)) != sizeof(cmd))
  return errno;

 if (resp.response_length < sizeof(resp))
  return EINVAL;

 pthread_mutex_lock(&wq->mutex);
 while (wq->events_completed != resp.events_reported)
  pthread_cond_wait(&wq->cond, &wq->mutex);
 pthread_mutex_unlock(&wq->mutex);

 return ret;
}
