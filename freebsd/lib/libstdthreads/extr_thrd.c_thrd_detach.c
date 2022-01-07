
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thrd_t ;


 scalar_t__ pthread_detach (int ) ;
 int thrd_error ;
 int thrd_success ;

int
thrd_detach(thrd_t thr)
{

 if (pthread_detach(thr) != 0)
  return (thrd_error);
 return (thrd_success);
}
