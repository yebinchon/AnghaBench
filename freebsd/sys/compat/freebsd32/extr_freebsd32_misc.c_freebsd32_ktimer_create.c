
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sigevent32 {int dummy; } ;
struct sigevent {int dummy; } ;
struct freebsd32_ktimer_create_args {int timerid; int clock_id; int * evp; } ;
typedef int ev32 ;


 int convert_sigevent32 (struct sigevent32*,struct sigevent*) ;
 int copyin (int *,struct sigevent32*,int) ;
 int copyout (int*,int ,int) ;
 int kern_ktimer_create (struct thread*,int ,struct sigevent*,int*,int) ;
 int kern_ktimer_delete (struct thread*,int) ;

int freebsd32_ktimer_create(struct thread *td,
    struct freebsd32_ktimer_create_args *uap)
{
 struct sigevent32 ev32;
 struct sigevent ev, *evp;
 int error, id;

 if (uap->evp == ((void*)0)) {
  evp = ((void*)0);
 } else {
  evp = &ev;
  error = copyin(uap->evp, &ev32, sizeof(ev32));
  if (error != 0)
   return (error);
  error = convert_sigevent32(&ev32, &ev);
  if (error != 0)
   return (error);
 }
 error = kern_ktimer_create(td, uap->clock_id, evp, &id, -1);
 if (error == 0) {
  error = copyout(&id, uap->timerid, sizeof(int));
  if (error != 0)
   kern_ktimer_delete(td, id);
 }
 return (error);
}
