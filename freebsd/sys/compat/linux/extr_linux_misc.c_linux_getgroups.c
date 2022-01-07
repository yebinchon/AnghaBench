
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_ngroups; int * cr_groups; } ;
struct thread {int* td_retval; struct ucred* td_ucred; } ;
struct linux_getgroups_args {int gidsetsize; int grouplist; } ;
typedef int l_gid_t ;
typedef int gid_t ;


 int EINVAL ;
 int M_LINUX ;
 int M_WAITOK ;
 int copyout (int *,int ,int) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;

int
linux_getgroups(struct thread *td, struct linux_getgroups_args *args)
{
 struct ucred *cred;
 l_gid_t *linux_gidset;
 gid_t *bsd_gidset;
 int bsd_gidsetsz, ngrp, error;

 cred = td->td_ucred;
 bsd_gidset = cred->cr_groups;
 bsd_gidsetsz = cred->cr_ngroups - 1;







 if ((ngrp = args->gidsetsize) == 0) {
  td->td_retval[0] = bsd_gidsetsz;
  return (0);
 }

 if (ngrp < bsd_gidsetsz)
  return (EINVAL);

 ngrp = 0;
 linux_gidset = malloc(bsd_gidsetsz * sizeof(*linux_gidset),
     M_LINUX, M_WAITOK);
 while (ngrp < bsd_gidsetsz) {
  linux_gidset[ngrp] = bsd_gidset[ngrp + 1];
  ngrp++;
 }

 error = copyout(linux_gidset, args->grouplist, ngrp * sizeof(l_gid_t));
 free(linux_gidset, M_LINUX);
 if (error)
  return (error);

 td->td_retval[0] = ngrp;
 return (0);
}
