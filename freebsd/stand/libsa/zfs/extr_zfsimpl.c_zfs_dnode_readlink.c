
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int znode_phys_t ;
typedef int spa_t ;
typedef int sa_hdr_phys_t ;
struct TYPE_6__ {scalar_t__ dn_bonustype; size_t dn_bonuslen; int dn_flags; char* dn_bonus; } ;
typedef TYPE_1__ dnode_phys_t ;
typedef int blkptr_t ;


 size_t BP_GET_LSIZE (int *) ;
 scalar_t__ DMU_OT_SA ;
 int DNODE_FLAG_SPILL_BLKPTR ;
 scalar_t__ DN_BONUS (TYPE_1__*) ;
 int * DN_SPILL_BLKPTR (TYPE_1__*) ;
 int EIO ;
 int SA_HDR_SIZE (int *) ;
 scalar_t__ SA_SYMLINK_OFFSET ;
 int dnode_read (int const*,TYPE_1__*,int ,char*,size_t) ;
 int memcpy (char*,char*,size_t) ;
 void* zfs_alloc (size_t) ;
 int zfs_free (void*,size_t) ;
 int zio_read (int const*,int *,void*) ;

__attribute__((used)) static int
zfs_dnode_readlink(const spa_t *spa, dnode_phys_t *dn, char *path, size_t psize)
{
 int rc = 0;

 if (dn->dn_bonustype == DMU_OT_SA) {
  sa_hdr_phys_t *sahdrp = ((void*)0);
  size_t size = 0;
  void *buf = ((void*)0);
  int hdrsize;
  char *p;

  if (dn->dn_bonuslen != 0)
   sahdrp = (sa_hdr_phys_t *)DN_BONUS(dn);
  else {
   blkptr_t *bp;

   if ((dn->dn_flags & DNODE_FLAG_SPILL_BLKPTR) == 0)
    return (EIO);
   bp = DN_SPILL_BLKPTR(dn);

   size = BP_GET_LSIZE(bp);
   buf = zfs_alloc(size);
   rc = zio_read(spa, bp, buf);
   if (rc != 0) {
    zfs_free(buf, size);
    return (rc);
   }
   sahdrp = buf;
  }
  hdrsize = SA_HDR_SIZE(sahdrp);
  p = (char *)((uintptr_t)sahdrp + hdrsize + SA_SYMLINK_OFFSET);
  memcpy(path, p, psize);
  if (buf != ((void*)0))
   zfs_free(buf, size);
  return (0);
 }




 if (psize + sizeof(znode_phys_t) <= dn->dn_bonuslen &&
     sizeof(znode_phys_t) <= sizeof(dn->dn_bonus)) {
  memcpy(path, &dn->dn_bonus[sizeof(znode_phys_t)], psize);
 } else {
  rc = dnode_read(spa, dn, 0, path, psize);
 }
 return (rc);
}
