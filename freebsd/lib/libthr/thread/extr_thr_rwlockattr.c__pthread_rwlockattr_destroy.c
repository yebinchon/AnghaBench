
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_rwlockattr_t ;


 int EINVAL ;
 int free (int *) ;

int
_pthread_rwlockattr_destroy(pthread_rwlockattr_t *rwlockattr)
{
 pthread_rwlockattr_t prwlockattr;

 if (rwlockattr == ((void*)0))
  return (EINVAL);
 prwlockattr = *rwlockattr;
 if (prwlockattr == ((void*)0))
  return (EINVAL);
 free(prwlockattr);
 return (0);
}
