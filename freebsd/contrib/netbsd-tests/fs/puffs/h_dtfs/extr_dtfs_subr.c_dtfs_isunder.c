
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_node {int dummy; } ;
struct dtfs_file {struct puffs_node* df_dotdot; } ;


 struct dtfs_file* DTFS_CTOF (struct puffs_node*) ;

bool
dtfs_isunder(struct puffs_node *pn, struct puffs_node *pn_parent)
{
 struct dtfs_file *df;

 while (pn) {
  if (pn == pn_parent)
   return 1;
  df = DTFS_CTOF(pn);
  pn = df->df_dotdot;
 }

 return 0;
}
