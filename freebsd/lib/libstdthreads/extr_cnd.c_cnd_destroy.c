
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cnd_t ;


 int pthread_cond_destroy (int *) ;

void
cnd_destroy(cnd_t *cond)
{

 (void)pthread_cond_destroy(cond);
}
