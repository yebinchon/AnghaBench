
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_mr {int lkey; TYPE_2__* pd; } ;
struct c4iw_dev {int lock; int ** mmid2ptr; } ;
struct TYPE_4__ {TYPE_1__* context; } ;
struct TYPE_3__ {int device; } ;


 size_t c4iw_mmid (int ) ;
 int free (int ) ;
 int ibv_cmd_dereg_mr (struct ibv_mr*) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;
 struct c4iw_dev* to_c4iw_dev (int ) ;
 int to_c4iw_mr (struct ibv_mr*) ;

int c4iw_dereg_mr(struct ibv_mr *mr)
{
 int ret;
 struct c4iw_dev *dev = to_c4iw_dev(mr->pd->context->device);

 ret = ibv_cmd_dereg_mr(mr);
 if (ret)
  return ret;

 pthread_spin_lock(&dev->lock);
 dev->mmid2ptr[c4iw_mmid(mr->lkey)] = ((void*)0);
 pthread_spin_unlock(&dev->lock);

 free(to_c4iw_mr(mr));

 return 0;
}
