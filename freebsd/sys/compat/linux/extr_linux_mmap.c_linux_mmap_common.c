
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmspace {scalar_t__ vm_maxsaddr; } ;
struct thread {int * td_retval; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_sysent; struct vmspace* p_vmspace; } ;
struct file {scalar_t__ f_type; int f_flag; } ;
typedef int off_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ sv_usrstack; } ;


 scalar_t__ DTYPE_DEV ;
 scalar_t__ DTYPE_VNODE ;
 int EACCES ;
 int EINVAL ;
 int FREAD ;
 size_t GUARD_SIZE ;
 int LINUX_CTR2 (int ,char*,int,int ) ;
 int LINUX_CTR6 (int ,char*,uintptr_t,size_t,int,int,int,int) ;
 int LINUX_MAP_ANON ;
 int LINUX_MAP_FIXED ;
 int LINUX_MAP_GROWSDOWN ;
 int LINUX_MAP_PRIVATE ;
 int LINUX_MAP_SHARED ;
 int MAP_ANON ;
 int MAP_EXCL ;
 int MAP_FIXED ;
 int MAP_NOSYNC ;
 int MAP_PRIVATE ;
 int MAP_SHARED ;
 int MAP_STACK ;
 int PAGE_MASK ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int RLIMIT_STACK ;
 size_t STACK_SIZE ;
 int cap_mmap_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int kern_mmap (struct thread*,uintptr_t,size_t,int,int,int,int) ;
 int lim_cur_proc (struct proc*,int ) ;
 int linux_fixup_prot (struct thread*,int*) ;
 int mmap2 ;

int
linux_mmap_common(struct thread *td, uintptr_t addr, size_t len, int prot,
    int flags, int fd, off_t pos)
{
 struct proc *p = td->td_proc;
 struct vmspace *vms = td->td_proc->p_vmspace;
 int bsd_flags, error;
 struct file *fp;

 LINUX_CTR6(mmap2, "0x%lx, %ld, %ld, 0x%08lx, %ld, 0x%lx",
     addr, len, prot, flags, fd, pos);

 error = 0;
 bsd_flags = 0;
 fp = ((void*)0);





 if (!((flags & LINUX_MAP_SHARED) ^ (flags & LINUX_MAP_PRIVATE)))
  return (EINVAL);

 if (flags & LINUX_MAP_SHARED)
  bsd_flags |= MAP_SHARED;
 if (flags & LINUX_MAP_PRIVATE)
  bsd_flags |= MAP_PRIVATE;
 if (flags & LINUX_MAP_FIXED)
  bsd_flags |= MAP_FIXED;
 if (flags & LINUX_MAP_ANON) {

  if ((pos & PAGE_MASK) != 0)
   return (EINVAL);
  pos = 0;
  bsd_flags |= MAP_ANON;
 } else
  bsd_flags |= MAP_NOSYNC;
 if (flags & LINUX_MAP_GROWSDOWN)
  bsd_flags |= MAP_STACK;
 linux_fixup_prot(td, &prot);



 fd = (bsd_flags & MAP_ANON) ? -1 : fd;
 if (fd != -1) {







  error = fget(td, fd, &cap_mmap_rights, &fp);
  if (error != 0)
   return (error);
  if (fp->f_type != DTYPE_VNODE && fp->f_type != DTYPE_DEV) {
   fdrop(fp, td);
   return (EINVAL);
  }


  if (!(fp->f_flag & FREAD)) {
   fdrop(fp, td);
   return (EACCES);
  }

  fdrop(fp, td);
 }

 if (flags & LINUX_MAP_GROWSDOWN) {
  if ((caddr_t)addr + len > vms->vm_maxsaddr) {
   PROC_LOCK(p);
   vms->vm_maxsaddr = (char *)p->p_sysent->sv_usrstack -
       lim_cur_proc(p, RLIMIT_STACK);
   PROC_UNLOCK(p);
  }
  if (len <= STACK_SIZE - GUARD_SIZE) {
   addr = addr - (STACK_SIZE - GUARD_SIZE - len);
   len = STACK_SIZE - GUARD_SIZE;
  }
 }
 if (addr != 0 && (bsd_flags & MAP_FIXED) == 0 &&
     (bsd_flags & MAP_EXCL) == 0) {
  error = kern_mmap(td, addr, len, prot,
      bsd_flags | MAP_FIXED | MAP_EXCL, fd, pos);
  if (error == 0)
   goto out;
 }

 error = kern_mmap(td, addr, len, prot, bsd_flags, fd, pos);
out:
 LINUX_CTR2(mmap2, "return: %d (%p)", error, td->td_retval[0]);

 return (error);
}
