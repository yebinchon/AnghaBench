
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sigevent {int dummy; } ;
struct linux_timer_create_args {int timerid; int clock_id; int * evp; } ;
struct l_sigevent {int dummy; } ;
typedef int l_ev ;
typedef int clockid_t ;


 int copyin (int *,struct l_sigevent*,int) ;
 int copyout (int*,int ,int) ;
 int kern_ktimer_create (struct thread*,int ,struct sigevent*,int*,int) ;
 int kern_ktimer_delete (struct thread*,int) ;
 int linux_convert_l_sigevent (struct l_sigevent*,struct sigevent*) ;
 int linux_to_native_clockid (int *,int ) ;

int
linux_timer_create(struct thread *td, struct linux_timer_create_args *uap)
{
 struct l_sigevent l_ev;
 struct sigevent ev, *evp;
 clockid_t nwhich;
 int error, id;

 if (uap->evp == ((void*)0)) {
  evp = ((void*)0);
 } else {
  error = copyin(uap->evp, &l_ev, sizeof(l_ev));
  if (error != 0)
   return (error);
  error = linux_convert_l_sigevent(&l_ev, &ev);
  if (error != 0)
   return (error);
  evp = &ev;
 }
 error = linux_to_native_clockid(&nwhich, uap->clock_id);
 if (error != 0)
  return (error);
 error = kern_ktimer_create(td, nwhich, evp, &id, -1);
 if (error == 0) {
  error = copyout(&id, uap->timerid, sizeof(int));
  if (error != 0)
   kern_ktimer_delete(td, id);
 }
 return (error);
}
