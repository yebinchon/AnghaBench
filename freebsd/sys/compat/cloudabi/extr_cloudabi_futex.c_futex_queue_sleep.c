
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_tid; } ;
struct futex_waiter {int fw_locked; struct futex_queue* fw_queue; int fw_wait; int fw_donated; int fw_tid; } ;
struct futex_queue {int fq_count; int fq_list; } ;
struct futex_lock {int fl_waitcount; } ;
typedef int sbintime_t ;
typedef scalar_t__ cloudabi_timestamp_t ;
typedef int cloudabi_clockid_t ;


 int ETIMEDOUT ;
 int EWOULDBLOCK ;
 int KASSERT (int,char*) ;
 int STAILQ_INSERT_TAIL (int *,struct futex_waiter*,int ) ;
 int STAILQ_REMOVE (int *,struct futex_waiter*,int ,int ) ;
 scalar_t__ UINT64_MAX ;
 int cv_destroy (int *) ;
 int cv_init (int *,char*) ;
 int cv_timedwait_sig_sbt (int *,int *,int ,int ,int ) ;
 int cv_wait_sig (int *,int *) ;
 int futex_global_lock ;
 int futex_lock_assert (struct futex_lock*) ;
 int futex_queue_convert_timestamp (struct thread*,int ,scalar_t__,scalar_t__,int *,int *,int) ;
 int futex_queue_init (int *) ;
 int futex_waiter ;
 int fw_next ;

__attribute__((used)) static int
futex_queue_sleep(struct futex_queue *fq, struct futex_lock *fl,
    struct futex_waiter *fw, struct thread *td, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision, bool abstime)
{
 sbintime_t sbttimeout, sbtprecision;
 int error;


 fw->fw_tid = td->td_tid;
 fw->fw_locked = 0;
 futex_queue_init(&fw->fw_donated);

 if (timeout != UINT64_MAX) {

  error = futex_queue_convert_timestamp(td, clock_id, timeout,
      precision, &sbttimeout, &sbtprecision, abstime);
  if (error != 0)
   return (error);
 }


 fw->fw_queue = fq;
 STAILQ_INSERT_TAIL(&fq->fq_list, fw, fw_next);
 ++fq->fq_count;

 cv_init(&fw->fw_wait, "futex");
 ++fl->fl_waitcount;

 futex_lock_assert(fl);
 if (timeout == UINT64_MAX) {

  error = cv_wait_sig(&fw->fw_wait, &futex_global_lock);
 } else {

  error = cv_timedwait_sig_sbt(&fw->fw_wait, &futex_global_lock,
      sbttimeout, sbtprecision, 0);
  futex_lock_assert(fl);
  if (error == EWOULDBLOCK &&
      fw->fw_queue != ((void*)0) && fw->fw_queue != fq) {







   error = cv_wait_sig(&fw->fw_wait, &futex_global_lock);
  }
 }
 futex_lock_assert(fl);

 --fl->fl_waitcount;
 cv_destroy(&fw->fw_wait);

 fq = fw->fw_queue;
 if (fq == ((void*)0)) {

  return (0);
 }


 KASSERT(error != 0, ("Woken up thread is still enqueued"));
 STAILQ_REMOVE(&fq->fq_list, fw, futex_waiter, fw_next);
 --fq->fq_count;
 return (error == EWOULDBLOCK ? ETIMEDOUT : error);
}
