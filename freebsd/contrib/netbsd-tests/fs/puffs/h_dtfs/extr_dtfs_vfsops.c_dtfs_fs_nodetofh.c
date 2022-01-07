
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {int va_gen; int va_fileid; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct dtfs_fid {int dfid_gen; int dfid_fileid; struct puffs_node* dfid_addr; } ;


 int E2BIG ;
 int assert (int) ;

int
dtfs_fs_nodetofh(struct puffs_usermount *pu, void *cookie,
 void *fid, size_t *fidsize)
{
 struct puffs_node *pn = cookie;
 struct dtfs_fid *dfid;
 extern int dynamicfh;

 if (dynamicfh == 0) {
  assert(*fidsize >= sizeof(struct dtfs_fid));
 } else {
  if (*fidsize < sizeof(struct dtfs_fid)) {
   *fidsize = sizeof(struct dtfs_fid);
   return E2BIG;
  }
  *fidsize = sizeof(struct dtfs_fid);
 }

 dfid = fid;

 dfid->dfid_addr = pn;
 dfid->dfid_fileid = pn->pn_va.va_fileid;
 dfid->dfid_gen = pn->pn_va.va_gen;

 return 0;
}
