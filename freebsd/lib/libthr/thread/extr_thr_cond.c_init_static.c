
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
typedef int * pthread_cond_t ;


 int THR_LOCK_ACQUIRE (struct pthread*,int *) ;
 int THR_LOCK_RELEASE (struct pthread*,int *) ;
 int _cond_static_lock ;
 int cond_init (int **,int *) ;

__attribute__((used)) static int
init_static(struct pthread *thread, pthread_cond_t *cond)
{
 int ret;

 THR_LOCK_ACQUIRE(thread, &_cond_static_lock);

 if (*cond == ((void*)0))
  ret = cond_init(cond, ((void*)0));
 else
  ret = 0;

 THR_LOCK_RELEASE(thread, &_cond_static_lock);

 return (ret);
}
