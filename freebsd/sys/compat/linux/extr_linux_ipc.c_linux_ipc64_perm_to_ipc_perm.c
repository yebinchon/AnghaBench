
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_ipc_perm {scalar_t__ uid; scalar_t__ gid; scalar_t__ cuid; scalar_t__ cgid; scalar_t__ mode; int seq; int key; } ;
struct l_ipc64_perm {scalar_t__ uid; scalar_t__ gid; scalar_t__ cuid; scalar_t__ cgid; scalar_t__ mode; int seq; int key; } ;


 int EOVERFLOW ;

__attribute__((used)) static int
linux_ipc64_perm_to_ipc_perm(struct l_ipc64_perm *in, struct l_ipc_perm *out)
{

 out->key = in->key;
 out->uid = in->uid;
 out->gid = in->gid;
 out->cuid = in->cuid;
 out->cgid = in->cgid;
 out->mode = in->mode;
 out->seq = in->seq;


 if (out->uid != in->uid || out->gid != in->gid ||
     out->cuid != in->cuid || out->cgid != in->cgid ||
     out->mode != in->mode)
  return (EOVERFLOW);
 else
  return (0);
}
