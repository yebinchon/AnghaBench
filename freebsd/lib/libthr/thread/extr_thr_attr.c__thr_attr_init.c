
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_attr {int dummy; } ;
typedef int * pthread_attr_t ;


 int ENOMEM ;
 int _pthread_attr_default ;
 int _thr_check_init () ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int *,int) ;

int
_thr_attr_init(pthread_attr_t *attr)
{
 int ret;
 pthread_attr_t pattr;

 _thr_check_init();


 if ((pattr = (pthread_attr_t) malloc(sizeof(struct pthread_attr))) == ((void*)0))

  ret = ENOMEM;
 else {

  memcpy(pattr, &_pthread_attr_default, sizeof(struct pthread_attr));


  *attr = pattr;
  ret = 0;
 }
 return(ret);
}
