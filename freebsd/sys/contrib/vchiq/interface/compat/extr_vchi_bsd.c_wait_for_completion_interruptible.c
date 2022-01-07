
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {scalar_t__ done; int lock; int cv; } ;


 int EINTR ;
 int ERESTART ;
 int _completion_claim (struct completion*) ;
 int cv_wait_sig (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
wait_for_completion_interruptible(struct completion *c)
{
 int res = 0;

 mtx_lock(&c->lock);
 while (c->done == 0) {
  res = cv_wait_sig(&c->cv, &c->lock);
  if (res)
   goto out;
 }

 _completion_claim(c);

out:
 mtx_unlock(&c->lock);

 if ((res == EINTR) || (res == ERESTART))
  res = -ERESTART;
 return res;
}
