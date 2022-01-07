
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_queue {int cq_lock; int cq_tail; int cq_acq_tail; } ;


 int ccp_queue_reserve_space (struct ccp_queue*,unsigned int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
ccp_queue_acquire_reserve(struct ccp_queue *qp, unsigned n, int mflags)
{
 int error;

 mtx_lock(&qp->cq_lock);
 qp->cq_acq_tail = qp->cq_tail;
 error = ccp_queue_reserve_space(qp, n, mflags);
 if (error != 0)
  mtx_unlock(&qp->cq_lock);
 return (error);
}
