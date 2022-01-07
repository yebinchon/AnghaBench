
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_cond_t ;


 int mm_free (int *) ;
 int pthread_cond_destroy (int *) ;

__attribute__((used)) static void
evthread_posix_cond_free(void *cond_)
{
 pthread_cond_t *cond = cond_;
 pthread_cond_destroy(cond);
 mm_free(cond);
}
