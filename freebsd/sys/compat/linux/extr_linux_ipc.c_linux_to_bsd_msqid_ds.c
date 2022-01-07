
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_ds {int msg_ctime; int msg_rtime; int msg_stime; int msg_lrpid; int msg_lspid; int msg_qbytes; int msg_qnum; int msg_cbytes; int msg_perm; } ;
struct l_msqid64_ds {int msg_ctime; int msg_rtime; int msg_stime; int msg_lrpid; int msg_lspid; int msg_qbytes; int msg_qnum; int msg_cbytes; int msg_perm; } ;


 int linux_to_bsd_ipc_perm (int *,int *) ;

__attribute__((used)) static void
linux_to_bsd_msqid_ds(struct l_msqid64_ds *lsp, struct msqid_ds *bsp)
{

 linux_to_bsd_ipc_perm(&lsp->msg_perm, &bsp->msg_perm);
 bsp->msg_cbytes = lsp->msg_cbytes;
 bsp->msg_qnum = lsp->msg_qnum;
 bsp->msg_qbytes = lsp->msg_qbytes;
 bsp->msg_lspid = lsp->msg_lspid;
 bsp->msg_lrpid = lsp->msg_lrpid;
 bsp->msg_stime = lsp->msg_stime;
 bsp->msg_rtime = lsp->msg_rtime;
 bsp->msg_ctime = lsp->msg_ctime;
}
