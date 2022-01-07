
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_ds {int msg_ctime; int msg_rtime; int msg_stime; int msg_lrpid; int msg_lspid; int msg_qbytes; int msg_qnum; int msg_cbytes; int msg_perm; } ;
struct l_msqid64_ds {int msg_ctime; int msg_rtime; int msg_stime; int msg_lrpid; int msg_lspid; int msg_qbytes; int msg_qnum; int msg_cbytes; int msg_perm; } ;


 int bsd_to_linux_ipc_perm (int *,int *) ;

__attribute__((used)) static void
bsd_to_linux_msqid_ds(struct msqid_ds *bsp, struct l_msqid64_ds *lsp)
{

 bsd_to_linux_ipc_perm(&bsp->msg_perm, &lsp->msg_perm);
 lsp->msg_cbytes = bsp->msg_cbytes;
 lsp->msg_qnum = bsp->msg_qnum;
 lsp->msg_qbytes = bsp->msg_qbytes;
 lsp->msg_lspid = bsp->msg_lspid;
 lsp->msg_lrpid = bsp->msg_lrpid;
 lsp->msg_stime = bsp->msg_stime;
 lsp->msg_rtime = bsp->msg_rtime;
 lsp->msg_ctime = bsp->msg_ctime;
}
