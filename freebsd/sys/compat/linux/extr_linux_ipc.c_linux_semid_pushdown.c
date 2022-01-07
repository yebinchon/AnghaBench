
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_semid_ds {scalar_t__ sem_otime; scalar_t__ sem_ctime; scalar_t__ sem_nsems; int sem_perm; } ;
struct l_semid64_ds {scalar_t__ sem_otime; scalar_t__ sem_ctime; scalar_t__ sem_nsems; int sem_perm; } ;
typedef int linux_semid ;
typedef scalar_t__ l_int ;
typedef int caddr_t ;


 int EOVERFLOW ;
 scalar_t__ LINUX_IPC_64 ;
 scalar_t__ SV_CURPROC_FLAG (int ) ;
 int SV_LP64 ;
 int bzero (struct l_semid_ds*,int) ;
 int copyout (struct l_semid_ds*,int ,int) ;
 int linux_ipc64_perm_to_ipc_perm (int *,int *) ;

__attribute__((used)) static int
linux_semid_pushdown(l_int ver, struct l_semid64_ds *linux_semid64, caddr_t uaddr)
{
 struct l_semid_ds linux_semid;
 int error;

 if (ver == LINUX_IPC_64 || SV_CURPROC_FLAG(SV_LP64))
  return (copyout(linux_semid64, uaddr, sizeof(*linux_semid64)));
 else {
  bzero(&linux_semid, sizeof(linux_semid));

  error = linux_ipc64_perm_to_ipc_perm(&linux_semid64->sem_perm,
      &linux_semid.sem_perm);
  if (error != 0)
   return (error);

  linux_semid.sem_otime = linux_semid64->sem_otime;
  linux_semid.sem_ctime = linux_semid64->sem_ctime;
  linux_semid.sem_nsems = linux_semid64->sem_nsems;


  if (linux_semid.sem_otime != linux_semid64->sem_otime ||
      linux_semid.sem_ctime != linux_semid64->sem_ctime ||
      linux_semid.sem_nsems != linux_semid64->sem_nsems)
   return (EOVERFLOW);

  return (copyout(&linux_semid, uaddr, sizeof(linux_semid)));
 }
}
