
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_fileid; scalar_t__ va_gen; int va_rdev; int va_size; int va_type; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_newinfo {int dummy; } ;
struct dtfs_fid {scalar_t__ dfid_fileid; scalar_t__ dfid_gen; int dfid_addr; } ;


 int ESTALE ;
 int addrcmp ;
 int assert (int) ;
 int puffs_newinfo_setcookie (struct puffs_newinfo*,struct puffs_node*) ;
 int puffs_newinfo_setrdev (struct puffs_newinfo*,int ) ;
 int puffs_newinfo_setsize (struct puffs_newinfo*,int ) ;
 int puffs_newinfo_setvtype (struct puffs_newinfo*,int ) ;
 struct puffs_node* puffs_pn_nodewalk (struct puffs_usermount*,int ,int ) ;

int
dtfs_fs_fhtonode(struct puffs_usermount *pu, void *fid, size_t fidsize,
 struct puffs_newinfo *pni)
{
 struct dtfs_fid *dfid;
 struct puffs_node *pn;

 assert(fidsize == sizeof(struct dtfs_fid));
 dfid = fid;

 pn = puffs_pn_nodewalk(pu, addrcmp, dfid->dfid_addr);
 if (pn == ((void*)0))
  return ESTALE;

 if (pn->pn_va.va_fileid != dfid->dfid_fileid
     || pn->pn_va.va_gen != dfid->dfid_gen)
  return ESTALE;

 puffs_newinfo_setcookie(pni, pn);
 puffs_newinfo_setvtype(pni, pn->pn_va.va_type);
 puffs_newinfo_setsize(pni, pn->pn_va.va_size);
 puffs_newinfo_setrdev(pni, pn->pn_va.va_rdev);

 return 0;
}
