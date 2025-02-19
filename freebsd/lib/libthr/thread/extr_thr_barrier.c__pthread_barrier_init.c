
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct pthread_barrier {int dummy; } ;
typedef TYPE_1__* pthread_barrierattr_t ;
typedef TYPE_2__* pthread_barrier_t ;
struct TYPE_14__ {int c_flags; } ;
struct TYPE_13__ {int m_flags; } ;
struct TYPE_12__ {unsigned int b_count; TYPE_5__ b_cv; TYPE_4__ b_lock; } ;
struct TYPE_11__ {scalar_t__ pshared; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 unsigned int INT_MAX ;
 scalar_t__ PTHREAD_PROCESS_PRIVATE ;
 TYPE_2__* THR_PSHARED_PTR ;
 int USYNC_PROCESS_SHARED ;
 TYPE_2__* __thr_pshared_offpage (TYPE_2__**,int) ;
 int _thr_ucond_init (TYPE_5__*) ;
 int _thr_umutex_init (TYPE_4__*) ;
 TYPE_2__* calloc (int,int) ;

int
_pthread_barrier_init(pthread_barrier_t * __restrict barrier,
    const pthread_barrierattr_t * __restrict attr, unsigned count)
{
 pthread_barrier_t bar;
 int pshared;

 if (barrier == ((void*)0) || count == 0 || count > INT_MAX)
  return (EINVAL);

 if (attr == ((void*)0) || *attr == ((void*)0) ||
     (*attr)->pshared == PTHREAD_PROCESS_PRIVATE) {
  bar = calloc(1, sizeof(struct pthread_barrier));
  if (bar == ((void*)0))
   return (ENOMEM);
  *barrier = bar;
  pshared = 0;
 } else {
  bar = __thr_pshared_offpage(barrier, 1);
  if (bar == ((void*)0))
   return (EFAULT);
  *barrier = THR_PSHARED_PTR;
  pshared = 1;
 }

 _thr_umutex_init(&bar->b_lock);
 _thr_ucond_init(&bar->b_cv);
 if (pshared) {
  bar->b_lock.m_flags |= USYNC_PROCESS_SHARED;
  bar->b_cv.c_flags |= USYNC_PROCESS_SHARED;
 }
 bar->b_count = count;
 return (0);
}
