
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct session {struct vnode* s_ttyvp; int * pg_session; int * p_pgrp; } ;
struct proc {struct vnode* s_ttyvp; int * pg_session; int * p_pgrp; } ;
struct pgrp {struct vnode* s_ttyvp; int * pg_session; int * p_pgrp; } ;
struct kinfo_proc {int ki_pid; int * ki_paddr; } ;
typedef int sess ;
typedef int proc ;
typedef int pgrp ;
typedef int kvm_t ;


 int assert (struct kinfo_proc*) ;
 int kvm_read_all (int *,unsigned long,struct session*,int) ;
 int warnx (char*,int *,int ) ;

__attribute__((used)) static struct vnode *
getctty(kvm_t *kd, struct kinfo_proc *kp)
{
 struct pgrp pgrp;
 struct proc proc;
 struct session sess;
 int error;

 assert(kp);
 error = kvm_read_all(kd, (unsigned long)kp->ki_paddr, &proc,
     sizeof(proc));
 if (error == 0) {
  warnx("can't read proc struct at %p for pid %d",
      kp->ki_paddr, kp->ki_pid);
  return (((void*)0));
 }
 if (proc.p_pgrp == ((void*)0))
  return (((void*)0));
 error = kvm_read_all(kd, (unsigned long)proc.p_pgrp, &pgrp,
     sizeof(pgrp));
 if (error == 0) {
  warnx("can't read pgrp struct at %p for pid %d",
      proc.p_pgrp, kp->ki_pid);
  return (((void*)0));
 }
 error = kvm_read_all(kd, (unsigned long)pgrp.pg_session, &sess,
     sizeof(sess));
 if (error == 0) {
  warnx("can't read session struct at %p for pid %d",
      pgrp.pg_session, kp->ki_pid);
  return (((void*)0));
 }
 return (sess.s_ttyvp);
}
