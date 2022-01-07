
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {scalar_t__ done; int lock; int cv; } ;


 int EINTR ;
 int ERESTART ;
 int EWOULDBLOCK ;
 int KASSERT (int,char*) ;
 int _completion_claim (struct completion*) ;
 int cv_timedwait_sig (int *,int *,unsigned long) ;
 unsigned long jiffies ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
wait_for_completion_interruptible_timeout(struct completion *c, unsigned long timeout)
{
 int res = 0;
 unsigned long start, now;
 start = jiffies;

 mtx_lock(&c->lock);
 while (c->done == 0) {
  res = cv_timedwait_sig(&c->cv, &c->lock, timeout);
  if (res)
   goto out;
  now = jiffies;
  if (timeout < (now - start)) {
   res = EWOULDBLOCK;
   goto out;
  }

  timeout -= (now - start);
  start = now;
 }

 _completion_claim(c);
 res = 0;

out:
 mtx_unlock(&c->lock);

 if (res == EWOULDBLOCK) {
  return 0;
 } else if ((res == EINTR) || (res == ERESTART)) {
  return -ERESTART;
 } else {
  KASSERT((res == 0), ("res = %d", res));
  return timeout;
 }
}
