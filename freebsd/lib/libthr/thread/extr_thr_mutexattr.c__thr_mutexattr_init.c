
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex_attr {int dummy; } ;
typedef int * pthread_mutexattr_t ;


 int ENOMEM ;
 int _pthread_mutexattr_default ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int *,int) ;

int
_thr_mutexattr_init(pthread_mutexattr_t *attr)
{
 int ret;
 pthread_mutexattr_t pattr;

 if ((pattr = (pthread_mutexattr_t)
     malloc(sizeof(struct pthread_mutex_attr))) == ((void*)0)) {
  ret = ENOMEM;
 } else {
  memcpy(pattr, &_pthread_mutexattr_default,
      sizeof(struct pthread_mutex_attr));
  *attr = pattr;
  ret = 0;
 }
 return (ret);
}
