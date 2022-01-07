
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
typedef int cloudabi_timestamp_t ;
typedef int cloudabi_clockid_t ;
typedef int clockid_t ;


 int cloudabi_convert_clockid (int ,int *) ;
 int cloudabi_convert_timespec (struct timespec*,int *) ;
 int kern_clock_gettime (struct thread*,int ,struct timespec*) ;

int
cloudabi_clock_time_get(struct thread *td, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t *ret)
{
 struct timespec ts;
 int error;
 clockid_t clockid;

 error = cloudabi_convert_clockid(clock_id, &clockid);
 if (error != 0)
  return (error);
 error = kern_clock_gettime(td, clockid, &ts);
 if (error != 0)
  return (error);
 return (cloudabi_convert_timespec(&ts, ret));
}
