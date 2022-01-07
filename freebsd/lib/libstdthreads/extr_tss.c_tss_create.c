
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tss_t ;
typedef int tss_dtor_t ;


 scalar_t__ pthread_key_create (int *,int ) ;
 int thrd_error ;
 int thrd_success ;

int
tss_create(tss_t *key, tss_dtor_t dtor)
{

 if (pthread_key_create(key, dtor) != 0)
  return (thrd_error);
 return (thrd_success);
}
