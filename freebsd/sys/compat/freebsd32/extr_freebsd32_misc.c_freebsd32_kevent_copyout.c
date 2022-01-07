
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kevent32 {int data1; int data2; int* ext64; } ;
struct kevent {int data; int* ext; } ;
struct freebsd32_kevent_args {int eventlist; } ;


 int CP (struct kevent,struct kevent32,int ) ;
 int KASSERT (int,char*) ;
 int KQ_NEVENTS ;
 int PTROUT_CP (struct kevent,struct kevent32,int ) ;
 int copyout (struct kevent32*,int,int) ;
 int fflags ;
 int filter ;
 int flags ;
 int ident ;
 int nitems (int*) ;
 int udata ;

__attribute__((used)) static int
freebsd32_kevent_copyout(void *arg, struct kevent *kevp, int count)
{
 struct freebsd32_kevent_args *uap;
 struct kevent32 ks32[KQ_NEVENTS];
 uint64_t e;
 int i, j, error;

 KASSERT(count <= KQ_NEVENTS, ("count (%d) > KQ_NEVENTS", count));
 uap = (struct freebsd32_kevent_args *)arg;

 for (i = 0; i < count; i++) {
  CP(kevp[i], ks32[i], ident);
  CP(kevp[i], ks32[i], filter);
  CP(kevp[i], ks32[i], flags);
  CP(kevp[i], ks32[i], fflags);

  ks32[i].data1 = kevp[i].data;
  ks32[i].data2 = kevp[i].data >> 32;




  PTROUT_CP(kevp[i], ks32[i], udata);
  for (j = 0; j < nitems(kevp->ext); j++) {
   e = kevp[i].ext[j];

   ks32[i].ext64[2 * j] = e;
   ks32[i].ext64[2 * j + 1] = e >> 32;




  }
 }
 error = copyout(ks32, uap->eventlist, count * sizeof *ks32);
 if (error == 0)
  uap->eventlist += count;
 return (error);
}
