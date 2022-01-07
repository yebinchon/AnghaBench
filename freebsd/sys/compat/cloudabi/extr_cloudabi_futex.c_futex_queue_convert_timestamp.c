
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int sbintime_t ;
typedef scalar_t__ cloudabi_timestamp_t ;
typedef int cloudabi_clockid_t ;


 int cloudabi_clock_time_get (struct thread*,int ,scalar_t__*) ;
 int futex_queue_convert_timestamp_relative (scalar_t__) ;

__attribute__((used)) static int
futex_queue_convert_timestamp(struct thread *td, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision,
    sbintime_t *sbttimeout, sbintime_t *sbtprecision, bool abstime)
{
 cloudabi_timestamp_t now;
 int error;

 if (abstime) {

  error = cloudabi_clock_time_get(td, clock_id, &now);
  if (error != 0)
   return (error);
  timeout = timeout < now ? 0 : timeout - now;
 }

 *sbttimeout = futex_queue_convert_timestamp_relative(timeout);
 *sbtprecision = futex_queue_convert_timestamp_relative(precision);
 return (0);
}
