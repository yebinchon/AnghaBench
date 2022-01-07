
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_nlink; } ;
struct puffs_node {TYPE_1__ pn_va; } ;


 int dtfs_freenode (struct puffs_node*) ;

int
dtfs_node_reclaim(struct puffs_usermount *pu, void *opc)
{
 struct puffs_node *pn = opc;

 if (pn->pn_va.va_nlink == 0)
  dtfs_freenode(pn);

 return 0;
}
