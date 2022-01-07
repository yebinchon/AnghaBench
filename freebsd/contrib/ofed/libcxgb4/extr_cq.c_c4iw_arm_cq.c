
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq {int dummy; } ;
struct c4iw_cq {int lock; int cq; } ;


 int INC_STAT (int ) ;
 int arm ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;
 int t4_arm_cq (int *,int) ;
 struct c4iw_cq* to_c4iw_cq (struct ibv_cq*) ;

int c4iw_arm_cq(struct ibv_cq *ibcq, int solicited)
{
 struct c4iw_cq *chp;
 int ret;

 INC_STAT(arm);
 chp = to_c4iw_cq(ibcq);
 pthread_spin_lock(&chp->lock);
 ret = t4_arm_cq(&chp->cq, solicited);
 pthread_spin_unlock(&chp->lock);
 return ret;
}
