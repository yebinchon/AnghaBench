
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int lock; int cv; } ;


 int cv_destroy (int *) ;
 int mtx_destroy (int *) ;

void
destroy_completion(struct completion *c)
{
 cv_destroy(&c->cv);
 mtx_destroy(&c->lock);
}
