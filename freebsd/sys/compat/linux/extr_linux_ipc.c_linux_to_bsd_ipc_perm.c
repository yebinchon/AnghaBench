
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_ipc64_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;
struct ipc_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;



__attribute__((used)) static void
linux_to_bsd_ipc_perm(struct l_ipc64_perm *lpp, struct ipc_perm *bpp)
{

 bpp->key = lpp->key;
 bpp->uid = lpp->uid;
 bpp->gid = lpp->gid;
 bpp->cuid = lpp->cuid;
 bpp->cgid = lpp->cgid;
 bpp->mode = lpp->mode;
 bpp->seq = lpp->seq;
}
