
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_usermount {int dummy; } ;
struct puffs_node {int dummy; } ;
struct puffs_cn {int pcn_namelen; int pcn_name; } ;
struct dtfs_file {int df_dirents; } ;


 struct dtfs_file* DTFS_CTOF (void*) ;
 int ENOTEMPTY ;
 int LIST_EMPTY (int *) ;
 int PUFFS_SETBACK_NOREF_N2 ;
 int dtfs_nukenode (void*,struct puffs_node*,int ,int ) ;
 int puffs_cc_getcc (struct puffs_usermount*) ;
 int puffs_setback (int ,int ) ;

int
dtfs_node_rmdir(struct puffs_usermount *pu, void *opc, void *targ,
 const struct puffs_cn *pcn)
{
 struct puffs_node *pn_parent = opc;
 struct dtfs_file *df = DTFS_CTOF(targ);

 if (!LIST_EMPTY(&df->df_dirents))
  return ENOTEMPTY;

 dtfs_nukenode(targ, pn_parent, pcn->pcn_name, pcn->pcn_namelen);
 puffs_setback(puffs_cc_getcc(pu), PUFFS_SETBACK_NOREF_N2);

 return 0;
}
