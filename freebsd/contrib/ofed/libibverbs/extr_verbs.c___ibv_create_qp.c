
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_qp_init_attr {int qp_type; int srq; int recv_cq; int send_cq; int qp_context; } ;
struct ibv_qp {int cond; int mutex; scalar_t__ events_completed; int state; int qp_type; int srq; int recv_cq; int send_cq; struct ibv_pd* pd; int qp_context; TYPE_2__* context; } ;
struct ibv_pd {TYPE_2__* context; } ;
struct TYPE_3__ {struct ibv_qp* (* create_qp ) (struct ibv_pd*,struct ibv_qp_init_attr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int IBV_QPS_RESET ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 struct ibv_qp* stub1 (struct ibv_pd*,struct ibv_qp_init_attr*) ;

struct ibv_qp *__ibv_create_qp(struct ibv_pd *pd,
          struct ibv_qp_init_attr *qp_init_attr)
{
 struct ibv_qp *qp = pd->context->ops.create_qp(pd, qp_init_attr);

 if (qp) {
  qp->context = pd->context;
  qp->qp_context = qp_init_attr->qp_context;
  qp->pd = pd;
  qp->send_cq = qp_init_attr->send_cq;
  qp->recv_cq = qp_init_attr->recv_cq;
  qp->srq = qp_init_attr->srq;
  qp->qp_type = qp_init_attr->qp_type;
  qp->state = IBV_QPS_RESET;
  qp->events_completed = 0;
  pthread_mutex_init(&qp->mutex, ((void*)0));
  pthread_cond_init(&qp->cond, ((void*)0));
 }

 return qp;
}
