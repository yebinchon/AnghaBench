
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct alerted_record {int timed_out; int alerted_at; TYPE_1__* cond; TYPE_2__ delay; } ;
struct TYPE_3__ {int lock; int cond; } ;
typedef int THREAD_FN ;


 int EVLOCK_LOCK (int ,int ) ;
 int EVLOCK_UNLOCK (int ,int ) ;
 int EVTHREAD_COND_WAIT (int ,int ) ;
 int EVTHREAD_COND_WAIT_TIMED (int ,int ,TYPE_2__*) ;
 int THREAD_RETURN () ;
 int evutil_gettimeofday (int *,int *) ;

__attribute__((used)) static THREAD_FN
wait_for_condition(void *arg)
{
 struct alerted_record *rec = arg;
 int r;

 EVLOCK_LOCK(rec->cond->lock, 0);
 if (rec->delay.tv_sec || rec->delay.tv_usec) {
  r = EVTHREAD_COND_WAIT_TIMED(rec->cond->cond, rec->cond->lock,
      &rec->delay);
 } else {
  r = EVTHREAD_COND_WAIT(rec->cond->cond, rec->cond->lock);
 }
 EVLOCK_UNLOCK(rec->cond->lock, 0);

 evutil_gettimeofday(&rec->alerted_at, ((void*)0));
 if (r == 1)
  rec->timed_out = 1;

 THREAD_RETURN();
}
