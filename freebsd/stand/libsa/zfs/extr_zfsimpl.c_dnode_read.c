
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
typedef int off_t ;
struct TYPE_4__ {int dn_indblkshift; int dn_datablkszsec; int dn_nlevels; int dn_maxblkid; int * dn_blkptr; } ;
typedef TYPE_1__ dnode_phys_t ;
typedef int blkptr_t ;


 scalar_t__ BP_IS_HOLE (int *) ;
 int EIO ;
 int SPA_BLKPTRSHIFT ;
 int SPA_MAXBLOCKSIZE ;
 int SPA_MINBLOCKSHIFT ;
 int dnode_cache_bn ;
 int * dnode_cache_buf ;
 TYPE_1__ const* dnode_cache_obj ;
 int memcpy (void*,int *,int) ;
 int memset (int *,int ,int) ;
 int printf (char*,int) ;
 int zio_read (int const*,int *,int *) ;

__attribute__((used)) static int
dnode_read(const spa_t *spa, const dnode_phys_t *dnode, off_t offset, void *buf, size_t buflen)
{
 int ibshift = dnode->dn_indblkshift - SPA_BLKPTRSHIFT;
 int bsize = dnode->dn_datablkszsec << SPA_MINBLOCKSHIFT;
 int nlevels = dnode->dn_nlevels;
 int i, rc;

 if (bsize > SPA_MAXBLOCKSIZE) {
  printf("ZFS: I/O error - blocks larger than %llu are not "
      "supported\n", SPA_MAXBLOCKSIZE);
  return (EIO);
 }





 while (buflen > 0) {
  uint64_t bn = offset / bsize;
  int boff = offset % bsize;
  int ibn;
  const blkptr_t *indbp;
  blkptr_t bp;

  if (bn > dnode->dn_maxblkid)
   return (EIO);

  if (dnode == dnode_cache_obj && bn == dnode_cache_bn)
   goto cached;

  indbp = dnode->dn_blkptr;
  for (i = 0; i < nlevels; i++) {





   ibn = bn >> ((nlevels - i - 1) * ibshift);
   ibn &= ((1 << ibshift) - 1);
   bp = indbp[ibn];
   if (BP_IS_HOLE(&bp)) {
    memset(dnode_cache_buf, 0, bsize);
    break;
   }
   rc = zio_read(spa, &bp, dnode_cache_buf);
   if (rc)
    return (rc);
   indbp = (const blkptr_t *) dnode_cache_buf;
  }
  dnode_cache_obj = dnode;
  dnode_cache_bn = bn;
 cached:





  i = bsize - boff;
  if (i > buflen) i = buflen;
  memcpy(buf, &dnode_cache_buf[boff], i);
  buf = ((char*) buf) + i;
  offset += i;
  buflen -= i;
 }

 return (0);
}
