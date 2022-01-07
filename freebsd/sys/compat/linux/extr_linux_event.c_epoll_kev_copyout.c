
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_pemuldata {struct epoll_emuldata* epoll; } ;
struct kevent {int ident; } ;
struct epoll_event {int data; } ;
struct epoll_emuldata {int fdc; int * udata; } ;
struct epoll_copyout_args {int leventlist; int count; int error; int p; } ;


 int KASSERT (int,char*) ;
 int LINUX_PEM_SLOCK (struct linux_pemuldata*) ;
 int LINUX_PEM_SUNLOCK (struct linux_pemuldata*) ;
 int M_EPOLL ;
 int M_WAITOK ;
 int M_ZERO ;
 int copyout (struct epoll_event*,int,int) ;
 int free (struct epoll_event*,int ) ;
 int kevent_to_epoll (struct kevent*,struct epoll_event*) ;
 struct epoll_event* malloc (int,int ,int) ;
 struct linux_pemuldata* pem_find (int ) ;

__attribute__((used)) static int
epoll_kev_copyout(void *arg, struct kevent *kevp, int count)
{
 struct epoll_copyout_args *args;
 struct linux_pemuldata *pem;
 struct epoll_emuldata *emd;
 struct epoll_event *eep;
 int error, fd, i;

 args = (struct epoll_copyout_args*) arg;
 eep = malloc(sizeof(*eep) * count, M_EPOLL, M_WAITOK | M_ZERO);

 pem = pem_find(args->p);
 KASSERT(pem != ((void*)0), ("epoll proc emuldata not found.\n"));
 LINUX_PEM_SLOCK(pem);
 emd = pem->epoll;
 KASSERT(emd != ((void*)0), ("epoll proc epolldata not found.\n"));

 for (i = 0; i < count; i++) {
  kevent_to_epoll(&kevp[i], &eep[i]);

  fd = kevp[i].ident;
  KASSERT(fd <= emd->fdc, ("epoll user data vector"
          " is too small.\n"));
  eep[i].data = emd->udata[fd];
 }
 LINUX_PEM_SUNLOCK(pem);

 error = copyout(eep, args->leventlist, count * sizeof(*eep));
 if (error == 0) {
  args->leventlist += count;
  args->count += count;
 } else if (args->error == 0)
  args->error = error;

 free(eep, M_EPOLL);
 return (error);
}
