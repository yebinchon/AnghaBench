
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int gid; int uid; } ;
struct l_msqid_ds {scalar_t__ msg_qbytes; scalar_t__ msg_lqbytes; TYPE_1__ msg_perm; } ;
struct l_msqid64_ds {scalar_t__ msg_qbytes; scalar_t__ msg_lqbytes; TYPE_1__ msg_perm; } ;
typedef int linux_msqid ;
typedef scalar_t__ l_int ;
typedef int caddr_t ;


 scalar_t__ LINUX_IPC_64 ;
 scalar_t__ SV_CURPROC_FLAG (int ) ;
 int SV_LP64 ;
 int bzero (struct l_msqid_ds*,int) ;
 int copyin (int ,struct l_msqid_ds*,int) ;

__attribute__((used)) static int
linux_msqid_pullup(l_int ver, struct l_msqid64_ds *linux_msqid64, caddr_t uaddr)
{
 struct l_msqid_ds linux_msqid;
 int error;

 if (ver == LINUX_IPC_64 || SV_CURPROC_FLAG(SV_LP64))
  return (copyin(uaddr, linux_msqid64, sizeof(*linux_msqid64)));
 else {
  error = copyin(uaddr, &linux_msqid, sizeof(linux_msqid));
  if (error != 0)
   return (error);

  bzero(linux_msqid64, sizeof(*linux_msqid64));

  linux_msqid64->msg_perm.uid = linux_msqid.msg_perm.uid;
  linux_msqid64->msg_perm.gid = linux_msqid.msg_perm.gid;
  linux_msqid64->msg_perm.mode = linux_msqid.msg_perm.mode;
  if (linux_msqid.msg_qbytes == 0)
   linux_msqid64->msg_qbytes = linux_msqid.msg_lqbytes;
  else
   linux_msqid64->msg_qbytes = linux_msqid.msg_qbytes;
  return (0);
 }
}
