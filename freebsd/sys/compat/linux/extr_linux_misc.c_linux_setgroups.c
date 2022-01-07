
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_ngroups; int * cr_groups; } ;
struct thread {struct proc* td_proc; } ;
struct proc {struct ucred* p_ucred; } ;
struct linux_setgroups_args {int gidsetsize; int grouplist; } ;
typedef int l_gid_t ;
typedef int gid_t ;


 int EINVAL ;
 int M_LINUX ;
 int M_WAITOK ;
 int PRIV_CRED_SETGROUPS ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int copyin (int ,int *,int) ;
 int crcopy (struct ucred*,struct ucred*) ;
 int crextend (struct ucred*,int) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 int ngroups_max ;
 int priv_check_cred (struct ucred*,int ) ;
 int proc_set_cred (struct proc*,struct ucred*) ;
 int setsugid (struct proc*) ;

int
linux_setgroups(struct thread *td, struct linux_setgroups_args *args)
{
 struct ucred *newcred, *oldcred;
 l_gid_t *linux_gidset;
 gid_t *bsd_gidset;
 int ngrp, error;
 struct proc *p;

 ngrp = args->gidsetsize;
 if (ngrp < 0 || ngrp >= ngroups_max + 1)
  return (EINVAL);
 linux_gidset = malloc(ngrp * sizeof(*linux_gidset), M_LINUX, M_WAITOK);
 error = copyin(args->grouplist, linux_gidset, ngrp * sizeof(l_gid_t));
 if (error)
  goto out;
 newcred = crget();
 crextend(newcred, ngrp + 1);
 p = td->td_proc;
 PROC_LOCK(p);
 oldcred = p->p_ucred;
 crcopy(newcred, oldcred);







 if ((error = priv_check_cred(oldcred, PRIV_CRED_SETGROUPS)) != 0) {
  PROC_UNLOCK(p);
  crfree(newcred);
  goto out;
 }

 if (ngrp > 0) {
  newcred->cr_ngroups = ngrp + 1;

  bsd_gidset = newcred->cr_groups;
  ngrp--;
  while (ngrp >= 0) {
   bsd_gidset[ngrp + 1] = linux_gidset[ngrp];
   ngrp--;
  }
 } else
  newcred->cr_ngroups = 1;

 setsugid(p);
 proc_set_cred(p, newcred);
 PROC_UNLOCK(p);
 crfree(oldcred);
 error = 0;
out:
 free(linux_gidset, M_LINUX);
 return (error);
}
