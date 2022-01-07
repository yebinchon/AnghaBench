
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct vattr {scalar_t__ va_flags; scalar_t__ va_uid; scalar_t__ va_gid; scalar_t__ va_mode; int va_vaflags; scalar_t__ va_size; TYPE_2__ va_mtime; TYPE_1__ va_atime; } ;
struct puffs_usermount {int dummy; } ;
struct TYPE_6__ {int va_type; scalar_t__ va_bytes; int va_mode; int va_gid; int va_uid; } ;
struct puffs_node {TYPE_3__ pn_va; } ;
struct puffs_cred {int dummy; } ;


 int EISDIR ;
 int EOPNOTSUPP ;
 scalar_t__ PUFFS_VNOVAL ;
 int VA_UTIMES_NULL ;





 int dtfs_setsize (struct puffs_node*,scalar_t__) ;
 int puffs_access_chmod (int ,int ,int,scalar_t__,struct puffs_cred const*) ;
 int puffs_access_chown (int ,int ,scalar_t__,scalar_t__,struct puffs_cred const*) ;
 int puffs_access_times (int ,int ,int ,int,struct puffs_cred const*) ;
 int puffs_setvattr (TYPE_3__*,struct vattr const*) ;

int
dtfs_node_setattr(struct puffs_usermount *pu, void *opc,
 const struct vattr *va, const struct puffs_cred *pcr)
{
 struct puffs_node *pn = opc;
 int rv;


 if (va->va_flags != PUFFS_VNOVAL)
  return EOPNOTSUPP;

 if (va->va_uid != PUFFS_VNOVAL || va->va_gid != PUFFS_VNOVAL) {
  rv = puffs_access_chown(pn->pn_va.va_uid, pn->pn_va.va_gid,
      va->va_uid, va->va_gid, pcr);
  if (rv)
   return rv;
 }

 if (va->va_mode != PUFFS_VNOVAL) {
  rv = puffs_access_chmod(pn->pn_va.va_uid, pn->pn_va.va_gid,
      pn->pn_va.va_type, va->va_mode, pcr);
  if (rv)
   return rv;
 }

 if ((va->va_atime.tv_sec != PUFFS_VNOVAL
       && va->va_atime.tv_nsec != PUFFS_VNOVAL)
     || (va->va_mtime.tv_sec != PUFFS_VNOVAL
       && va->va_mtime.tv_nsec != PUFFS_VNOVAL)) {
  rv = puffs_access_times(pn->pn_va.va_uid, pn->pn_va.va_gid,
      pn->pn_va.va_mode, va->va_vaflags & VA_UTIMES_NULL, pcr);
  if (rv)
   return rv;
 }

 if (va->va_size != PUFFS_VNOVAL) {
  switch (pn->pn_va.va_type) {
  case 128:
   dtfs_setsize(pn, va->va_size);
   pn->pn_va.va_bytes = va->va_size;
   break;
  case 132:
  case 131:
  case 129:
   break;
  case 130:
   return EISDIR;
  default:
   return EOPNOTSUPP;
  }
 }

 puffs_setvattr(&pn->pn_va, va);

 return 0;
}
