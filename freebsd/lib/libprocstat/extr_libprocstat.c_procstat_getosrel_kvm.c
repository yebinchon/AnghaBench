
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_osrel; } ;
struct kinfo_proc {int ki_pid; scalar_t__ ki_paddr; } ;
typedef int proc ;
typedef int kvm_t ;


 int assert (int ) ;
 int kvm_read_all (int *,unsigned long,struct proc*,int) ;
 int warnx (char*,scalar_t__,int ) ;

__attribute__((used)) static int
procstat_getosrel_kvm(kvm_t *kd, struct kinfo_proc *kp, int *osrelp)
{
 struct proc proc;

 assert(kd != ((void*)0));
 assert(kp != ((void*)0));
 if (!kvm_read_all(kd, (unsigned long)kp->ki_paddr, &proc,
     sizeof(proc))) {
  warnx("can't read proc struct at %p for pid %d",
      kp->ki_paddr, kp->ki_pid);
  return (-1);
 }
 *osrelp = proc.p_osrel;
 return (0);
}
