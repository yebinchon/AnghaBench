
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int done; int lock; int cv; } ;


 int INT_MAX ;
 int KASSERT (int,char*) ;
 int cv_broadcast (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
complete_all(struct completion *c)
{
 mtx_lock(&c->lock);

 if (c->done >= 0) {
  KASSERT(c->done < INT_MAX, ("c->done overflow"));
  c->done = -1;
  cv_broadcast(&c->cv);
 } else {
  KASSERT(c->done == -1, ("Invalid value of c->done: %d", c->done));
 }

 mtx_unlock(&c->lock);
}
