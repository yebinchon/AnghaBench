
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
struct thread {int td_retval; } ;
struct cloudabi_sys_clock_time_get_args {int clock_id; } ;
typedef int cloudabi_timestamp_t ;


 int cloudabi_clock_time_get (struct thread*,int ,int *) ;
 int memcpy (int ,int *,int) ;

int
cloudabi_sys_clock_time_get(struct thread *td,
    struct cloudabi_sys_clock_time_get_args *uap)
{
 cloudabi_timestamp_t ts;
 int error;

 error = cloudabi_clock_time_get(td, uap->clock_id, &ts);
 memcpy(td->td_retval, &ts, sizeof(ts));
 return (error);
}
