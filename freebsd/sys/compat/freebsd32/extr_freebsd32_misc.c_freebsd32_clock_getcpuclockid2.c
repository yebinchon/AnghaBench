
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_clock_getcpuclockid2_args {int clock_id; int which; int id; } ;
typedef int clockid_t ;


 int PAIR32TO64 (int ,int ) ;
 int copyout (int *,int ,int) ;
 int id_t ;
 int kern_clock_getcpuclockid2 (struct thread*,int ,int ,int *) ;

int
freebsd32_clock_getcpuclockid2(struct thread *td,
    struct freebsd32_clock_getcpuclockid2_args *uap)
{
 clockid_t clk_id;
 int error;

 error = kern_clock_getcpuclockid2(td, PAIR32TO64(id_t, uap->id),
     uap->which, &clk_id);
 if (error == 0)
  error = copyout(&clk_id, uap->clock_id, sizeof(clockid_t));
 return (error);
}
