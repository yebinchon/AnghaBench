
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {scalar_t__ done; int lock; int cv; } ;


 int MTX_DEF ;
 int cv_init (int *,char*) ;
 int mtx_init (int *,char*,char*,int ) ;

void
init_completion(struct completion *c)
{
 cv_init(&c->cv, "VCHI completion cv");
 mtx_init(&c->lock, "VCHI completion lock", "condvar", MTX_DEF);
 c->done = 0;
}
