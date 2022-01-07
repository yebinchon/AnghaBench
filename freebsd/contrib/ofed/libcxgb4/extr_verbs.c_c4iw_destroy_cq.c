
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_cq {TYPE_1__* context; } ;
struct c4iw_dev {int lock; int ** cqid2ptr; } ;
struct TYPE_4__ {int error; size_t cqid; struct c4iw_cq* sw_queue; int memsize; int queue; int ugts; } ;
struct c4iw_cq {TYPE_2__ cq; } ;
struct TYPE_3__ {int device; } ;


 int MASKED (int ) ;
 int c4iw_page_size ;
 int free (struct c4iw_cq*) ;
 int ibv_cmd_destroy_cq (struct ibv_cq*) ;
 int munmap (int ,int ) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;
 struct c4iw_cq* to_c4iw_cq (struct ibv_cq*) ;
 struct c4iw_dev* to_c4iw_dev (int ) ;

int c4iw_destroy_cq(struct ibv_cq *ibcq)
{
 int ret;
 struct c4iw_cq *chp = to_c4iw_cq(ibcq);
 struct c4iw_dev *dev = to_c4iw_dev(ibcq->context->device);

 chp->cq.error = 1;
 ret = ibv_cmd_destroy_cq(ibcq);
 if (ret) {
  return ret;
 }
 munmap(MASKED(chp->cq.ugts), c4iw_page_size);
 munmap(chp->cq.queue, chp->cq.memsize);

 pthread_spin_lock(&dev->lock);
 dev->cqid2ptr[chp->cq.cqid] = ((void*)0);
 pthread_spin_unlock(&dev->lock);

 free(chp->cq.sw_queue);
 free(chp);
 return 0;
}
