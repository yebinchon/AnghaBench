
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {int cv; int mtx; } ;


 int cv_destroy (int *) ;
 int mtx_destroy (int *) ;

void
_sema_destroy(struct semaphore *s)
{
 mtx_destroy(&s->mtx);
 cv_destroy(&s->cv);
}
