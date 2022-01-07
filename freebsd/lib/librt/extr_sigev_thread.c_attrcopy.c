
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int dummy; } ;
typedef int pthread_attr_t ;


 int _pthread_attr_getguardsize (int *,size_t*) ;
 int _pthread_attr_getinheritsched (int *,int*) ;
 int _pthread_attr_getschedparam (int *,struct sched_param*) ;
 int _pthread_attr_getschedpolicy (int *,int*) ;
 int _pthread_attr_getscope (int *,int*) ;
 int _pthread_attr_getstackaddr (int *,void**) ;
 int _pthread_attr_getstacksize (int *,size_t*) ;
 int _pthread_attr_setguardsize (int *,size_t) ;
 int _pthread_attr_setinheritsched (int *,int) ;
 int _pthread_attr_setschedparam (int *,struct sched_param*) ;
 int _pthread_attr_setschedpolicy (int *,int) ;
 int _pthread_attr_setscope (int *,int) ;
 int _pthread_attr_setstackaddr (int *,void*) ;
 int _pthread_attr_setstacksize (int *,size_t) ;

__attribute__((used)) static void
attrcopy(pthread_attr_t *src, pthread_attr_t *dst)
{
 struct sched_param sched;
 void *a;
 size_t u;
 int v;

 _pthread_attr_getschedpolicy(src, &v);
 _pthread_attr_setschedpolicy(dst, v);

 _pthread_attr_getinheritsched(src, &v);
 _pthread_attr_setinheritsched(dst, v);

 _pthread_attr_getschedparam(src, &sched);
 _pthread_attr_setschedparam(dst, &sched);

 _pthread_attr_getscope(src, &v);
 _pthread_attr_setscope(dst, v);

 _pthread_attr_getstacksize(src, &u);
 _pthread_attr_setstacksize(dst, u);

 _pthread_attr_getstackaddr(src, &a);
 _pthread_attr_setstackaddr(src, a);

 _pthread_attr_getguardsize(src, &u);
 _pthread_attr_setguardsize(dst, u);
}
