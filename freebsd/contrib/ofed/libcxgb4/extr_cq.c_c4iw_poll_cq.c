
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_wc {int dummy; } ;
struct ibv_cq {int dummy; } ;
struct c4iw_cq {int lock; int cq; int rhp; } ;


 int EAGAIN ;
 int ENODATA ;
 int c4iw_flush_qps (int ) ;
 int c4iw_poll_cq_one (struct c4iw_cq*,struct ibv_wc*) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;
 scalar_t__ t4_cq_in_error (int *) ;
 int t4_cq_notempty (int *) ;
 int t4_reset_cq_in_error (int *) ;
 struct c4iw_cq* to_c4iw_cq (struct ibv_cq*) ;

int c4iw_poll_cq(struct ibv_cq *ibcq, int num_entries, struct ibv_wc *wc)
{
 struct c4iw_cq *chp;
 int npolled;
 int err = 0;

 chp = to_c4iw_cq(ibcq);

 if (t4_cq_in_error(&chp->cq)) {
  t4_reset_cq_in_error(&chp->cq);
  c4iw_flush_qps(chp->rhp);
 }

 if (!num_entries)
  return t4_cq_notempty(&chp->cq);

 pthread_spin_lock(&chp->lock);
 for (npolled = 0; npolled < num_entries; ++npolled) {
  do {
   err = c4iw_poll_cq_one(chp, wc + npolled);
  } while (err == -EAGAIN);
  if (err)
   break;
 }
 pthread_spin_unlock(&chp->lock);
 return !err || err == -ENODATA ? npolled : err;
}
