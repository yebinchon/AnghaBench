
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_type; int va_fileid; } ;
struct puffs_node {TYPE_1__ pn_va; int pn_data; } ;
struct puffs_cred {int dummy; } ;
struct dtfs_dirent {int dfd_name; struct puffs_node* dfd_node; } ;
struct dirent {int dummy; } ;
typedef int off_t ;


 int DENT_ADJ (int ) ;
 int DENT_DOT ;
 int DENT_DOTDOT ;
 int ENOTDIR ;
 int PUFFS_STORE_DCOOKIE (int *,size_t*,int ) ;
 scalar_t__ VDIR ;
 struct dtfs_dirent* dtfs_dirgetnth (int ,int ) ;
 int dtfs_updatetimes (struct puffs_node*,int,int ,int ) ;
 int puffs_gendotdent (struct dirent**,int ,int ,size_t*) ;
 int puffs_nextdent (struct dirent**,int ,int ,int ,size_t*) ;
 int puffs_vtype2dt (scalar_t__) ;

int
dtfs_node_readdir(struct puffs_usermount *pu, void *opc,
 struct dirent *dent, off_t *readoff, size_t *reslen,
 const struct puffs_cred *pcr,
 int *eofflag, off_t *cookies, size_t *ncookies)
{
 struct puffs_node *pn = opc;
 struct puffs_node *pn_nth;
 struct dtfs_dirent *dfd_nth;

 if (pn->pn_va.va_type != VDIR)
  return ENOTDIR;

 dtfs_updatetimes(pn, 1, 0, 0);

 *ncookies = 0;
 again:
 if (*readoff == DENT_DOT || *readoff == DENT_DOTDOT) {
  puffs_gendotdent(&dent, pn->pn_va.va_fileid, *readoff, reslen);
  (*readoff)++;
  PUFFS_STORE_DCOOKIE(cookies, ncookies, *readoff);
  goto again;
 }

 for (;;) {
  dfd_nth = dtfs_dirgetnth(pn->pn_data, DENT_ADJ(*readoff));
  if (!dfd_nth) {
   *eofflag = 1;
   break;
  }
  pn_nth = dfd_nth->dfd_node;

  if (!puffs_nextdent(&dent, dfd_nth->dfd_name,
      pn_nth->pn_va.va_fileid,
      puffs_vtype2dt(pn_nth->pn_va.va_type),
      reslen))
   break;

  (*readoff)++;
  PUFFS_STORE_DCOOKIE(cookies, ncookies, *readoff);
 }

 return 0;
}
