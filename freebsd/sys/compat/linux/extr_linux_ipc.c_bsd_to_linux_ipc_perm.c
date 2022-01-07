
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_ipc64_perm {int mode; int seq; int cgid; int cuid; int gid; int uid; int key; } ;
struct ipc_perm {int mode; int seq; int cgid; int cuid; int gid; int uid; int key; } ;


 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;

__attribute__((used)) static void
bsd_to_linux_ipc_perm(struct ipc_perm *bpp, struct l_ipc64_perm *lpp)
{

 lpp->key = bpp->key;
 lpp->uid = bpp->uid;
 lpp->gid = bpp->gid;
 lpp->cuid = bpp->cuid;
 lpp->cgid = bpp->cgid;
 lpp->mode = bpp->mode & (S_IRWXU|S_IRWXG|S_IRWXO);
 lpp->seq = bpp->seq;
}
