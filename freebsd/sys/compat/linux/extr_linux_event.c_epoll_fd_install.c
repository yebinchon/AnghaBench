
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct linux_pemuldata {struct epoll_emuldata* epoll; } ;
struct epoll_emuldata {int fdc; int * udata; } ;
typedef int epoll_udata_t ;


 int EPOLL_SIZE (int) ;
 int KASSERT (int ,char*) ;
 int LINUX_PEM_XLOCK (struct linux_pemuldata*) ;
 int LINUX_PEM_XUNLOCK (struct linux_pemuldata*) ;
 int M_EPOLL ;
 int M_WAITOK ;
 struct epoll_emuldata* malloc (int ,int ,int ) ;
 struct linux_pemuldata* pem_find (struct proc*) ;
 struct epoll_emuldata* realloc (struct epoll_emuldata*,int ,int ,int ) ;

__attribute__((used)) static void
epoll_fd_install(struct thread *td, int fd, epoll_udata_t udata)
{
 struct linux_pemuldata *pem;
 struct epoll_emuldata *emd;
 struct proc *p;

 p = td->td_proc;

 pem = pem_find(p);
 KASSERT(pem != ((void*)0), ("epoll proc emuldata not found.\n"));

 LINUX_PEM_XLOCK(pem);
 if (pem->epoll == ((void*)0)) {
  emd = malloc(EPOLL_SIZE(fd), M_EPOLL, M_WAITOK);
  emd->fdc = fd;
  pem->epoll = emd;
 } else {
  emd = pem->epoll;
  if (fd > emd->fdc) {
   emd = realloc(emd, EPOLL_SIZE(fd), M_EPOLL, M_WAITOK);
   emd->fdc = fd;
   pem->epoll = emd;
  }
 }
 emd->udata[fd] = udata;
 LINUX_PEM_XUNLOCK(pem);
}
