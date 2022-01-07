
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_type; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_cn {int pcn_namelen; char* pcn_name; } ;
struct dtfs_file {int df_dirents; } ;
struct dtfs_dirent {int dfd_name; int dfd_namelen; } ;


 struct dtfs_file* DTFS_CTOF (struct puffs_node*) ;
 int DTFS_PTOF (struct puffs_node*) ;
 int EINVAL ;
 int ENOENT ;
 int ENOTEMPTY ;
 int LIST_EMPTY (int *) ;
 scalar_t__ PCNISDOTDOT (struct puffs_cn const*) ;
 scalar_t__ VDIR ;
 int dtfs_adddent (struct puffs_node*,struct dtfs_dirent*) ;
 struct dtfs_dirent* dtfs_dirgetbyname (int ,char*,int) ;
 scalar_t__ dtfs_isunder (struct puffs_node*,struct puffs_node*) ;
 int dtfs_nukenode (struct puffs_node*,struct puffs_node*,char*,int) ;
 int dtfs_removedent (struct puffs_node*,struct dtfs_dirent*) ;
 int dtfs_updatetimes (void*,int ,int,int ) ;
 int estrndup (char*,int) ;
 int free (int ) ;
 int strlen (int ) ;

int
dtfs_node_rename(struct puffs_usermount *pu, void *opc, void *src,
 const struct puffs_cn *pcn_src, void *targ_dir, void *targ,
 const struct puffs_cn *pcn_targ)
{
 struct dtfs_dirent *dfd_src;
 struct dtfs_file *df_targ;
 struct puffs_node *pn_sdir = opc;
 struct puffs_node *pn_sfile = src;
 struct puffs_node *pn_tdir = targ_dir;
 struct puffs_node *pn_tfile = targ;


 if (pn_sfile->pn_va.va_type == VDIR) {
  if (dtfs_isunder(pn_tdir, pn_sfile))
   return EINVAL;

  if ((pcn_src->pcn_namelen == 1 && pcn_src->pcn_name[0]=='.') ||
      opc == src ||
      PCNISDOTDOT(pcn_src) ||
      PCNISDOTDOT(pcn_targ)) {
   return EINVAL;
  }
 }

 dfd_src = dtfs_dirgetbyname(DTFS_PTOF(pn_sdir),
     pcn_src->pcn_name, pcn_src->pcn_namelen);


 if (dfd_src == ((void*)0)) {
  return ENOENT;
 }


 if (pn_tfile) {
  if (pn_tfile->pn_va.va_type == VDIR) {
   df_targ = DTFS_CTOF(pn_tfile);
   if (!LIST_EMPTY(&df_targ->df_dirents))
    return ENOTEMPTY;
  }
  dtfs_nukenode(pn_tfile, pn_tdir,
      pcn_targ->pcn_name, pcn_targ->pcn_namelen);
 }


 dtfs_removedent(pn_sdir, dfd_src);

 dtfs_adddent(pn_tdir, dfd_src);


 free(dfd_src->dfd_name);
 dfd_src->dfd_name = estrndup(pcn_targ->pcn_name,pcn_targ->pcn_namelen);
 dfd_src->dfd_namelen = strlen(dfd_src->dfd_name);

 dtfs_updatetimes(src, 0, 1, 0);

 return 0;
}
