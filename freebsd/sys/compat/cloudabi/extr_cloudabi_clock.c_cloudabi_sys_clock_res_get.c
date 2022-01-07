
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int td_retval; } ;
struct cloudabi_sys_clock_res_get_args {int clock_id; } ;
typedef int cts ;
typedef int cloudabi_timestamp_t ;
typedef int clockid_t ;


 int cloudabi_convert_clockid (int ,int *) ;
 int cloudabi_convert_timespec (struct timespec*,int *) ;
 int kern_clock_getres (struct thread*,int ,struct timespec*) ;
 int memcpy (int ,int *,int) ;

int
cloudabi_sys_clock_res_get(struct thread *td,
    struct cloudabi_sys_clock_res_get_args *uap)
{
 struct timespec ts;
 cloudabi_timestamp_t cts;
 int error;
 clockid_t clockid;

 error = cloudabi_convert_clockid(uap->clock_id, &clockid);
 if (error != 0)
  return (error);
 error = kern_clock_getres(td, clockid, &ts);
 if (error != 0)
  return (error);
 error = cloudabi_convert_timespec(&ts, &cts);
 if (error != 0)
  return (error);
 memcpy(td->td_retval, &cts, sizeof(cts));
 return (0);
}
