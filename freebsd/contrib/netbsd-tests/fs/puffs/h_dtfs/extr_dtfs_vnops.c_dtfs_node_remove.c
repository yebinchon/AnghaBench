
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_type; scalar_t__ va_nlink; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_cn {int pcn_namelen; int pcn_name; } ;


 int EPERM ;
 int PUFFS_SETBACK_NOREF_N2 ;
 scalar_t__ VDIR ;
 int dtfs_nukenode (void*,struct puffs_node*,int ,int ) ;
 int puffs_cc_getcc (struct puffs_usermount*) ;
 int puffs_setback (int ,int ) ;

int
dtfs_node_remove(struct puffs_usermount *pu, void *opc, void *targ,
 const struct puffs_cn *pcn)
{
 struct puffs_node *pn_parent = opc;
 struct puffs_node *pn = targ;

 if (pn->pn_va.va_type == VDIR)
  return EPERM;

 dtfs_nukenode(targ, pn_parent, pcn->pcn_name, pcn->pcn_namelen);

 if (pn->pn_va.va_nlink == 0)
  puffs_setback(puffs_cc_getcc(pu), PUFFS_SETBACK_NOREF_N2);

 return 0;
}
