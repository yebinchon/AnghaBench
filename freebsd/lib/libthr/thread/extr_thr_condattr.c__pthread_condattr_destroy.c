
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_condattr_t ;


 int EINVAL ;
 int free (int *) ;

int
_pthread_condattr_destroy(pthread_condattr_t *attr)
{
 int ret;

 if (attr == ((void*)0) || *attr == ((void*)0)) {
  ret = EINVAL;
 } else {
  free(*attr);
  *attr = ((void*)0);
  ret = 0;
 }
 return(ret);
}
