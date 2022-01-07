
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vattr {int va_nlink; } ;
struct puffs_usermount {int dummy; } ;
struct puffs_node {struct vattr pn_va; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int VDIR ;
 int dtfs_baseattrs (struct vattr*,int,int) ;
 struct puffs_node* puffs_getroot (struct puffs_usermount*) ;
 int puffs_setrootinfo (struct puffs_usermount*,int,int ,int ) ;

__attribute__((used)) static int
rtnorm(struct puffs_usermount *pu, const char *str, enum vtype vt)
{
 struct puffs_node *pn = puffs_getroot(pu);
 struct vattr *va = &pn->pn_va;

 dtfs_baseattrs(va, vt, 2);
 if (vt == VDIR)
  va->va_nlink = 2;
 else
  va->va_nlink = 1;

 puffs_setrootinfo(pu, vt, 0, 0);

 return 0;
}
