
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_nlink; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
typedef struct puffs_node* puffs_cookie_t ;


 int PUFFS_SETBACK_NOREF_N1 ;
 int puffs_cc_getcc (struct puffs_usermount*) ;
 int puffs_setback (int ,int ) ;

int
dtfs_node_inactive(struct puffs_usermount *pu, puffs_cookie_t opc)
{
 struct puffs_node *pn = opc;

 if (pn->pn_va.va_nlink == 0)
  puffs_setback(puffs_cc_getcc(pu), PUFFS_SETBACK_NOREF_N1);
 return 0;
}
