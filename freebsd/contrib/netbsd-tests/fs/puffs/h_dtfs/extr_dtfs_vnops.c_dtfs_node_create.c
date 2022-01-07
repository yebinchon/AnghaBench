
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vattr {int va_type; } ;
struct puffs_usermount {int dummy; } ;
struct puffs_node {int pn_va; } ;
struct puffs_newinfo {int dummy; } ;
struct puffs_cn {int dummy; } ;


 int ENODEV ;
 int VREG ;
 int VSOCK ;
 struct puffs_node* dtfs_genfile (struct puffs_node*,struct puffs_cn const*,int ) ;
 int puffs_newinfo_setcookie (struct puffs_newinfo*,struct puffs_node*) ;
 int puffs_setvattr (int *,struct vattr const*) ;

int
dtfs_node_create(struct puffs_usermount *pu, void *opc,
 struct puffs_newinfo *pni, const struct puffs_cn *pcn,
 const struct vattr *va)
{
 struct puffs_node *pn_parent = opc;
 struct puffs_node *pn_new;

 if (!(va->va_type == VREG || va->va_type == VSOCK))
  return ENODEV;

 pn_new = dtfs_genfile(pn_parent, pcn, va->va_type);
 puffs_setvattr(&pn_new->pn_va, va);

 puffs_newinfo_setcookie(pni, pn_new);

 return 0;
}
