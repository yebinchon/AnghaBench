
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pthread_rwlockattr {int dummy; } ;
typedef TYPE_1__* pthread_rwlockattr_t ;
struct TYPE_4__ {int pshared; } ;


 int EINVAL ;
 int ENOMEM ;
 int PTHREAD_PROCESS_PRIVATE ;
 TYPE_1__* malloc (int) ;

int
_pthread_rwlockattr_init(pthread_rwlockattr_t *rwlockattr)
{
 pthread_rwlockattr_t prwlockattr;

 if (rwlockattr == ((void*)0))
  return (EINVAL);

 prwlockattr = malloc(sizeof(struct pthread_rwlockattr));
 if (prwlockattr == ((void*)0))
  return (ENOMEM);

 prwlockattr->pshared = PTHREAD_PROCESS_PRIVATE;
 *rwlockattr = prwlockattr;
 return (0);
}
