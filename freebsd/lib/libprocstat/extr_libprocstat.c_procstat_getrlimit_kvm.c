
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int * p_limit; } ;
struct proc {int * p_limit; } ;
struct kinfo_proc {void* ki_paddr; int ki_pid; } ;
typedef int proc ;
typedef int kvm_t ;


 int RLIM_NLIMITS ;
 int assert (int) ;
 int kvm_read_all (int *,unsigned long,struct rlimit*,int) ;
 int warnx (char*,void*,int ) ;

__attribute__((used)) static int
procstat_getrlimit_kvm(kvm_t *kd, struct kinfo_proc *kp, int which,
    struct rlimit* rlimit)
{
 struct proc proc;
 unsigned long offset;

 assert(kd != ((void*)0));
 assert(kp != ((void*)0));
 assert(which >= 0 && which < RLIM_NLIMITS);
 if (!kvm_read_all(kd, (unsigned long)kp->ki_paddr, &proc,
     sizeof(proc))) {
  warnx("can't read proc struct at %p for pid %d",
      kp->ki_paddr, kp->ki_pid);
  return (-1);
 }
 if (proc.p_limit == ((void*)0))
  return (-1);
 offset = (unsigned long)proc.p_limit + sizeof(struct rlimit) * which;
 if (!kvm_read_all(kd, offset, rlimit, sizeof(*rlimit))) {
  warnx("can't read rlimit struct at %p for pid %d",
      (void *)offset, kp->ki_pid);
  return (-1);
 }
 return (0);
}
