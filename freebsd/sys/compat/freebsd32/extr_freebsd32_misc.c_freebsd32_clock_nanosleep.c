
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_clock_nanosleep_args {int rmtp; int rqtp; int flags; int clock_id; } ;


 int freebsd32_user_clock_nanosleep (struct thread*,int ,int ,int ,int ) ;
 int kern_posix_error (struct thread*,int) ;

int
freebsd32_clock_nanosleep(struct thread *td,
    struct freebsd32_clock_nanosleep_args *uap)
{
 int error;

 error = freebsd32_user_clock_nanosleep(td, uap->clock_id, uap->flags,
     uap->rqtp, uap->rmtp);
 return (kern_posix_error(td, error));
}
