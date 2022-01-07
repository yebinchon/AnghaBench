
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thrd_t ;


 scalar_t__ pthread_join (int ,void**) ;
 int thrd_error ;
 int thrd_success ;

int
thrd_join(thrd_t thr, int *res)
{
 void *value_ptr;

 if (pthread_join(thr, &value_ptr) != 0)
  return (thrd_error);
 if (res != ((void*)0))
  *res = (intptr_t)value_ptr;
 return (thrd_success);
}
