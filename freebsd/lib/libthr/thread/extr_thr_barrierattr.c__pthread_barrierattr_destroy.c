
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_barrierattr_t ;


 int EINVAL ;
 int free (int *) ;

int
_pthread_barrierattr_destroy(pthread_barrierattr_t *attr)
{

 if (attr == ((void*)0) || *attr == ((void*)0))
  return (EINVAL);

 free(*attr);
 return (0);
}
