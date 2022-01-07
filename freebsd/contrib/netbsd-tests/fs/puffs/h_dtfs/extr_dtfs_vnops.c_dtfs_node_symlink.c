
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vattr {scalar_t__ va_type; } ;
struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {int va_size; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_newinfo {int dummy; } ;
struct puffs_cn {int dummy; } ;
struct dtfs_file {int df_linktarget; } ;


 struct dtfs_file* DTFS_PTOF (struct puffs_node*) ;
 int ENODEV ;
 scalar_t__ VLNK ;
 struct puffs_node* dtfs_genfile (struct puffs_node*,struct puffs_cn const*,scalar_t__) ;
 int estrdup (char const*) ;
 int puffs_newinfo_setcookie (struct puffs_newinfo*,struct puffs_node*) ;
 int puffs_setvattr (TYPE_1__*,struct vattr const*) ;
 int strlen (int ) ;

int
dtfs_node_symlink(struct puffs_usermount *pu, void *opc,
 struct puffs_newinfo *pni, const struct puffs_cn *pcn_src,
 const struct vattr *va, const char *link_target)
{
 struct puffs_node *pn_parent = opc;
 struct puffs_node *pn_new;
 struct dtfs_file *df_new;

 if (va->va_type != VLNK)
  return ENODEV;

 pn_new = dtfs_genfile(pn_parent, pcn_src, VLNK);
 puffs_setvattr(&pn_new->pn_va, va);
 df_new = DTFS_PTOF(pn_new);
 df_new->df_linktarget = estrdup(link_target);
 pn_new->pn_va.va_size = strlen(df_new->df_linktarget);

 puffs_newinfo_setcookie(pni, pn_new);

 return 0;
}
