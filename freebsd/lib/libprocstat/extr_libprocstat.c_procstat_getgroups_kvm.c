
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucred ;
struct ucred {scalar_t__ p_ucred; int cr_ngroups; scalar_t__ cr_groups; } ;
struct proc {scalar_t__ p_ucred; int cr_ngroups; scalar_t__ cr_groups; } ;
struct kinfo_proc {scalar_t__ ki_paddr; int ki_pid; } ;
typedef int proc ;
typedef int kvm_t ;
typedef struct ucred gid_t ;


 scalar_t__ NOCRED ;
 int assert (int ) ;
 int free (struct ucred*) ;
 int kvm_read_all (int *,unsigned long,struct ucred*,size_t) ;
 struct ucred* malloc (size_t) ;
 int warn (char*,size_t) ;
 int warnx (char*,scalar_t__,int ) ;

__attribute__((used)) static gid_t *
procstat_getgroups_kvm(kvm_t *kd, struct kinfo_proc *kp, unsigned int *cntp)
{
 struct proc proc;
 struct ucred ucred;
 gid_t *groups;
 size_t len;

 assert(kd != ((void*)0));
 assert(kp != ((void*)0));
 if (!kvm_read_all(kd, (unsigned long)kp->ki_paddr, &proc,
     sizeof(proc))) {
  warnx("can't read proc struct at %p for pid %d",
      kp->ki_paddr, kp->ki_pid);
  return (((void*)0));
 }
 if (proc.p_ucred == NOCRED)
  return (((void*)0));
 if (!kvm_read_all(kd, (unsigned long)proc.p_ucred, &ucred,
     sizeof(ucred))) {
  warnx("can't read ucred struct at %p for pid %d",
      proc.p_ucred, kp->ki_pid);
  return (((void*)0));
 }
 len = ucred.cr_ngroups * sizeof(gid_t);
 groups = malloc(len);
 if (groups == ((void*)0)) {
  warn("malloc(%zu)", len);
  return (((void*)0));
 }
 if (!kvm_read_all(kd, (unsigned long)ucred.cr_groups, groups, len)) {
  warnx("can't read groups at %p for pid %d",
      ucred.cr_groups, kp->ki_pid);
  free(groups);
  return (((void*)0));
 }
 *cntp = ucred.cr_ngroups;
 return (groups);
}
