
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeout ;
struct urwlock {int dummy; } ;
struct timespec {int dummy; } ;
struct _umtx_time {int _clockid; int _flags; struct timespec _timeout; } ;


 int CLOCK_REALTIME ;
 int UMTX_ABSTIME ;
 int UMTX_OP_RW_WRLOCK ;
 int _umtx_op_err (struct urwlock*,int ,int ,void*,struct _umtx_time*) ;

int
__thr_rwlock_wrlock(struct urwlock *rwlock, const struct timespec *tsp)
{
 struct _umtx_time timeout, *tm_p;
 size_t tm_size;

 if (tsp == ((void*)0)) {
  tm_p = ((void*)0);
  tm_size = 0;
 } else {
  timeout._timeout = *tsp;
  timeout._flags = UMTX_ABSTIME;
  timeout._clockid = CLOCK_REALTIME;
  tm_p = &timeout;
  tm_size = sizeof(timeout);
 }
 return (_umtx_op_err(rwlock, UMTX_OP_RW_WRLOCK, 0, (void *)tm_size,
     tm_p));
}
