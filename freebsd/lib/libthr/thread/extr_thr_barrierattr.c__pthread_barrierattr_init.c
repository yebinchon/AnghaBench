
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pthread_barrierattr {int dummy; } ;
typedef TYPE_1__* pthread_barrierattr_t ;
struct TYPE_4__ {int pshared; } ;


 int EINVAL ;
 int ENOMEM ;
 int PTHREAD_PROCESS_PRIVATE ;
 TYPE_1__* malloc (int) ;

int
_pthread_barrierattr_init(pthread_barrierattr_t *attr)
{

 if (attr == ((void*)0))
  return (EINVAL);

 if ((*attr = malloc(sizeof(struct pthread_barrierattr))) == ((void*)0))
  return (ENOMEM);

 (*attr)->pshared = PTHREAD_PROCESS_PRIVATE;
 return (0);
}
