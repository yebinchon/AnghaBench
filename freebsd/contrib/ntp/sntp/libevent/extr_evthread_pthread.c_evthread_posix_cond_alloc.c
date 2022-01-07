
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void pthread_cond_t ;


 int mm_free (void*) ;
 void* mm_malloc (int) ;
 scalar_t__ pthread_cond_init (void*,int *) ;

__attribute__((used)) static void *
evthread_posix_cond_alloc(unsigned condflags)
{
 pthread_cond_t *cond = mm_malloc(sizeof(pthread_cond_t));
 if (!cond)
  return ((void*)0);
 if (pthread_cond_init(cond, ((void*)0))) {
  mm_free(cond);
  return ((void*)0);
 }
 return cond;
}
