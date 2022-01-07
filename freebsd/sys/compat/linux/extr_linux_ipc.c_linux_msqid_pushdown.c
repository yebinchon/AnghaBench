
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_msqid_ds {scalar_t__ msg_stime; scalar_t__ msg_rtime; scalar_t__ msg_ctime; scalar_t__ msg_cbytes; scalar_t__ msg_lcbytes; scalar_t__ msg_qnum; scalar_t__ msg_qbytes; scalar_t__ msg_lqbytes; int msg_lrpid; int msg_lspid; int msg_perm; } ;
struct l_msqid64_ds {scalar_t__ msg_stime; scalar_t__ msg_rtime; scalar_t__ msg_ctime; scalar_t__ msg_cbytes; scalar_t__ msg_lcbytes; scalar_t__ msg_qnum; scalar_t__ msg_qbytes; scalar_t__ msg_lqbytes; int msg_lrpid; int msg_lspid; int msg_perm; } ;
typedef int linux_msqid ;
typedef scalar_t__ l_int ;
typedef int caddr_t ;


 int EOVERFLOW ;
 scalar_t__ LINUX_IPC_64 ;
 scalar_t__ SV_CURPROC_FLAG (int ) ;
 int SV_LP64 ;
 scalar_t__ USHRT_MAX ;
 int bzero (struct l_msqid_ds*,int) ;
 int copyout (struct l_msqid_ds*,int ,int) ;
 int linux_ipc64_perm_to_ipc_perm (int *,int *) ;

__attribute__((used)) static int
linux_msqid_pushdown(l_int ver, struct l_msqid64_ds *linux_msqid64, caddr_t uaddr)
{
 struct l_msqid_ds linux_msqid;
 int error;

 if (ver == LINUX_IPC_64 || SV_CURPROC_FLAG(SV_LP64))
  return (copyout(linux_msqid64, uaddr, sizeof(*linux_msqid64)));
 else {
  bzero(&linux_msqid, sizeof(linux_msqid));

  error = linux_ipc64_perm_to_ipc_perm(&linux_msqid64->msg_perm,
      &linux_msqid.msg_perm);
  if (error != 0)
   return (error);

  linux_msqid.msg_stime = linux_msqid64->msg_stime;
  linux_msqid.msg_rtime = linux_msqid64->msg_rtime;
  linux_msqid.msg_ctime = linux_msqid64->msg_ctime;

  if (linux_msqid64->msg_cbytes > USHRT_MAX)
   linux_msqid.msg_cbytes = USHRT_MAX;
  else
   linux_msqid.msg_cbytes = linux_msqid64->msg_cbytes;
  linux_msqid.msg_lcbytes = linux_msqid64->msg_cbytes;
  if (linux_msqid64->msg_qnum > USHRT_MAX)
   linux_msqid.msg_qnum = USHRT_MAX;
  else
   linux_msqid.msg_qnum = linux_msqid64->msg_qnum;
  if (linux_msqid64->msg_qbytes > USHRT_MAX)
   linux_msqid.msg_qbytes = USHRT_MAX;
  else
   linux_msqid.msg_qbytes = linux_msqid64->msg_qbytes;
  linux_msqid.msg_lqbytes = linux_msqid64->msg_qbytes;
  linux_msqid.msg_lspid = linux_msqid64->msg_lspid;
  linux_msqid.msg_lrpid = linux_msqid64->msg_lrpid;


  if (linux_msqid.msg_stime != linux_msqid64->msg_stime ||
      linux_msqid.msg_rtime != linux_msqid64->msg_rtime ||
      linux_msqid.msg_ctime != linux_msqid64->msg_ctime)
   return (EOVERFLOW);

  return (copyout(&linux_msqid, uaddr, sizeof(linux_msqid)));
 }
}
