
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mtx_t ;


 int pthread_mutex_destroy (int *) ;

void
mtx_destroy(mtx_t *mtx)
{

 (void)pthread_mutex_destroy(mtx);
}
