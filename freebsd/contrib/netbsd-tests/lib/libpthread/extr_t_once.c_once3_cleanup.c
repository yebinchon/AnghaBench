
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int PTHREAD_REQUIRE (int ) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
once3_cleanup(void *m)
{
 pthread_mutex_t *mu = m;

 PTHREAD_REQUIRE(pthread_mutex_unlock(mu));
}
