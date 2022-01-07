
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int gid; int uid; } ;
struct l_shmid_ds {TYPE_1__ shm_perm; } ;
struct l_shmid64_ds {TYPE_1__ shm_perm; } ;
typedef int linux_shmid ;
typedef scalar_t__ l_int ;
typedef int caddr_t ;


 scalar_t__ LINUX_IPC_64 ;
 scalar_t__ SV_CURPROC_FLAG (int ) ;
 int SV_LP64 ;
 int bzero (struct l_shmid_ds*,int) ;
 int copyin (int ,struct l_shmid_ds*,int) ;

__attribute__((used)) static int
linux_shmid_pullup(l_int ver, struct l_shmid64_ds *linux_shmid64, caddr_t uaddr)
{
 struct l_shmid_ds linux_shmid;
 int error;

 if (ver == LINUX_IPC_64 || SV_CURPROC_FLAG(SV_LP64))
  return (copyin(uaddr, linux_shmid64, sizeof(*linux_shmid64)));
 else {
  error = copyin(uaddr, &linux_shmid, sizeof(linux_shmid));
  if (error != 0)
   return (error);

  bzero(linux_shmid64, sizeof(*linux_shmid64));

  linux_shmid64->shm_perm.uid = linux_shmid.shm_perm.uid;
  linux_shmid64->shm_perm.gid = linux_shmid.shm_perm.gid;
  linux_shmid64->shm_perm.mode = linux_shmid.shm_perm.mode;
  return (0);
 }
}
