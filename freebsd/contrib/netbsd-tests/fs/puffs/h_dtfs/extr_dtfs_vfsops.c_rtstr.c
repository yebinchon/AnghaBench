
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vattr {int va_nlink; int va_size; } ;
struct puffs_usermount {int dummy; } ;
struct puffs_node {struct vattr pn_va; } ;
struct dtfs_file {int df_linktarget; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 struct dtfs_file* DTFS_PTOF (struct puffs_node*) ;
 int dtfs_baseattrs (struct vattr*,int,int) ;
 int estrdup (char*) ;
 struct puffs_node* puffs_getroot (struct puffs_usermount*) ;
 int puffs_setrootinfo (struct puffs_usermount*,int,int ,int ) ;
 int sscanf (char const*,char*,char*) ;
 int strlen (int ) ;

__attribute__((used)) static int
rtstr(struct puffs_usermount *pu, const char *str, enum vtype vt)
{
 struct puffs_node *pn = puffs_getroot(pu);
 struct vattr *va = &pn->pn_va;
 struct dtfs_file *df = DTFS_PTOF(pn);
 char ltarg[256+1];

 if (sscanf(str, "%*s %256s", ltarg) != 1)
  return 1;

 dtfs_baseattrs(va, vt, 2);
 df->df_linktarget = estrdup(ltarg);

 va->va_nlink = 1;
 va->va_size = strlen(df->df_linktarget);

 puffs_setrootinfo(pu, vt, 0, 0);

 return 0;
}
