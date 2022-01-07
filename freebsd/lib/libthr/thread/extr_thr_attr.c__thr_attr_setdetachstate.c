
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {int flags; } ;


 int EINVAL ;
 int PTHREAD_CREATE_DETACHED ;
 int PTHREAD_CREATE_JOINABLE ;
 int PTHREAD_DETACHED ;

int
_thr_attr_setdetachstate(pthread_attr_t *attr, int detachstate)
{
 int ret;


 if (attr == ((void*)0) || *attr == ((void*)0) ||
     (detachstate != PTHREAD_CREATE_DETACHED &&
     detachstate != PTHREAD_CREATE_JOINABLE))
  ret = EINVAL;
 else {

  if (detachstate == PTHREAD_CREATE_DETACHED)

   (*attr)->flags |= PTHREAD_DETACHED;
  else

   (*attr)->flags &= ~PTHREAD_DETACHED;
  ret = 0;
 }
 return(ret);
}
