
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct thread {int* td_retval; TYPE_1__* td_proc; } ;
struct filedesc {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int si_note; } ;
struct eventfd {int efd_flags; int efd_lock; TYPE_2__ efd_sel; int efd_count; } ;
struct TYPE_3__ {struct filedesc* p_fd; } ;


 int DTYPE_LINUXEFD ;
 int FNONBLOCK ;
 int FREAD ;
 int FWRITE ;
 int LINUX_O_CLOEXEC ;
 int LINUX_O_NONBLOCK ;
 int MTX_DEF ;
 int M_EPOLL ;
 int M_WAITOK ;
 int M_ZERO ;
 int O_CLOEXEC ;
 int eventfdops ;
 int falloc (struct thread*,struct file**,int*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int,int ,struct eventfd*,int *) ;
 int knlist_init_mtx (int *,int *) ;
 struct eventfd* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
eventfd_create(struct thread *td, uint32_t initval, int flags)
{
 struct filedesc *fdp;
 struct eventfd *efd;
 struct file *fp;
 int fflags, fd, error;

 fflags = 0;
 if ((flags & LINUX_O_CLOEXEC) != 0)
  fflags |= O_CLOEXEC;

 fdp = td->td_proc->p_fd;
 error = falloc(td, &fp, &fd, fflags);
 if (error != 0)
  return (error);

 efd = malloc(sizeof(*efd), M_EPOLL, M_WAITOK | M_ZERO);
 efd->efd_flags = flags;
 efd->efd_count = initval;
 mtx_init(&efd->efd_lock, "eventfd", ((void*)0), MTX_DEF);

 knlist_init_mtx(&efd->efd_sel.si_note, &efd->efd_lock);

 fflags = FREAD | FWRITE;
 if ((flags & LINUX_O_NONBLOCK) != 0)
  fflags |= FNONBLOCK;

 finit(fp, fflags, DTYPE_LINUXEFD, efd, &eventfdops);
 fdrop(fp, td);

 td->td_retval[0] = fd;
 return (error);
}
