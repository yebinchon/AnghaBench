
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_cond_attr {int dummy; } ;
typedef int * pthread_condattr_t ;


 int ENOMEM ;
 int _pthread_condattr_default ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int *,int) ;

int
_pthread_condattr_init(pthread_condattr_t *attr)
{
 pthread_condattr_t pattr;
 int ret;

 if ((pattr = (pthread_condattr_t)
     malloc(sizeof(struct pthread_cond_attr))) == ((void*)0)) {
  ret = ENOMEM;
 } else {
  memcpy(pattr, &_pthread_condattr_default,
      sizeof(struct pthread_cond_attr));
  *attr = pattr;
  ret = 0;
 }
 return (ret);
}
