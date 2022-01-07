
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_2__ {scalar_t__ va_type; int va_gid; scalar_t__ va_uid; } ;
struct puffs_node {TYPE_1__ pn_va; int * pn_mnt; } ;
struct puffs_cn {int pcn_namelen; int pcn_name; int pcn_cred; } ;
struct dtfs_mount {int dtm_nextfileid; } ;
struct dtfs_file {struct puffs_node* df_dotdot; } ;
struct dtfs_dirent {struct puffs_node* dfd_parent; int dfd_name; int dfd_namelen; struct puffs_node* dfd_node; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 scalar_t__ VDIR ;
 int assert (int) ;
 int dtfs_adddent (struct puffs_node*,struct dtfs_dirent*) ;
 int dtfs_baseattrs (TYPE_1__*,int,int ) ;
 struct dtfs_file* dtfs_newdir () ;
 struct dtfs_file* dtfs_newfile () ;
 struct dtfs_dirent* emalloc (int) ;
 int errx (int,char*) ;
 int estrndup (int ,int ) ;
 int puffs_cred_getuid (int ,scalar_t__*) ;
 struct dtfs_mount* puffs_pn_getmntspecific (struct puffs_node*) ;
 struct puffs_node* puffs_pn_new (int *,struct dtfs_file*) ;
 int strlen (int ) ;

struct puffs_node *
dtfs_genfile(struct puffs_node *dir, const struct puffs_cn *pcn,
 enum vtype type)
{
 struct dtfs_file *dff;
 struct dtfs_dirent *dfd;
 struct dtfs_mount *dtm;
 struct puffs_node *newpn;
 uid_t uid;
 int rv;

 assert(dir->pn_va.va_type == VDIR);
 assert(dir->pn_mnt != ((void*)0));

 uid = 0;
 rv = puffs_cred_getuid(pcn->pcn_cred, &uid);
 assert(rv == 0);

 if (type == VDIR) {
  dff = dtfs_newdir();
  dff->df_dotdot = dir;
 } else
  dff = dtfs_newfile();

 dtm = puffs_pn_getmntspecific(dir);
 newpn = puffs_pn_new(dir->pn_mnt, dff);
 if (newpn == ((void*)0))
  errx(1, "getnewpnode");
 dtfs_baseattrs(&newpn->pn_va, type, dtm->dtm_nextfileid++);

 dfd = emalloc(sizeof(struct dtfs_dirent));
 dfd->dfd_node = newpn;
 dfd->dfd_name = estrndup(pcn->pcn_name, pcn->pcn_namelen);
 dfd->dfd_namelen = strlen(dfd->dfd_name);
 dfd->dfd_parent = dir;
 dtfs_adddent(dir, dfd);

 newpn->pn_va.va_uid = uid;
 newpn->pn_va.va_gid = dir->pn_va.va_gid;

 return newpn;
}
