
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_shmid_ds {scalar_t__ shm_segsz; scalar_t__ shm_atime; scalar_t__ shm_dtime; scalar_t__ shm_ctime; scalar_t__ shm_cpid; scalar_t__ shm_lpid; scalar_t__ shm_nattch; int shm_perm; } ;
struct l_shmid64_ds {scalar_t__ shm_segsz; scalar_t__ shm_atime; scalar_t__ shm_dtime; scalar_t__ shm_ctime; scalar_t__ shm_cpid; scalar_t__ shm_lpid; scalar_t__ shm_nattch; int shm_perm; } ;
typedef int linux_shmid ;
typedef scalar_t__ l_int ;
typedef int caddr_t ;


 int EOVERFLOW ;
 scalar_t__ LINUX_IPC_64 ;
 scalar_t__ SV_CURPROC_FLAG (int ) ;
 int SV_LP64 ;
 int bzero (struct l_shmid_ds*,int) ;
 int copyout (struct l_shmid_ds*,int ,int) ;
 int linux_ipc64_perm_to_ipc_perm (int *,int *) ;

__attribute__((used)) static int
linux_shmid_pushdown(l_int ver, struct l_shmid64_ds *linux_shmid64, caddr_t uaddr)
{
 struct l_shmid_ds linux_shmid;
 int error;

 if (ver == LINUX_IPC_64 || SV_CURPROC_FLAG(SV_LP64))
  return (copyout(linux_shmid64, uaddr, sizeof(*linux_shmid64)));
 else {
  bzero(&linux_shmid, sizeof(linux_shmid));

  error = linux_ipc64_perm_to_ipc_perm(&linux_shmid64->shm_perm,
      &linux_shmid.shm_perm);
  if (error != 0)
   return (error);

  linux_shmid.shm_segsz = linux_shmid64->shm_segsz;
  linux_shmid.shm_atime = linux_shmid64->shm_atime;
  linux_shmid.shm_dtime = linux_shmid64->shm_dtime;
  linux_shmid.shm_ctime = linux_shmid64->shm_ctime;
  linux_shmid.shm_cpid = linux_shmid64->shm_cpid;
  linux_shmid.shm_lpid = linux_shmid64->shm_lpid;
  linux_shmid.shm_nattch = linux_shmid64->shm_nattch;


  if (linux_shmid.shm_segsz != linux_shmid64->shm_segsz ||
      linux_shmid.shm_atime != linux_shmid64->shm_atime ||
      linux_shmid.shm_dtime != linux_shmid64->shm_dtime ||
      linux_shmid.shm_ctime != linux_shmid64->shm_ctime ||
      linux_shmid.shm_cpid != linux_shmid64->shm_cpid ||
      linux_shmid.shm_lpid != linux_shmid64->shm_lpid ||
      linux_shmid.shm_nattch != linux_shmid64->shm_nattch)
   return (EOVERFLOW);

  return (copyout(&linux_shmid, uaddr, sizeof(linux_shmid)));
 }
}
