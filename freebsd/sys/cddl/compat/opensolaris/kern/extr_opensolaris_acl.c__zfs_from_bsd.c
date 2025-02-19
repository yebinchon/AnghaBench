
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zfs2bsd {int zb_bsd; int zb_zfs; } ;



__attribute__((used)) static uint32_t
_zfs_from_bsd(int bsd, const struct zfs2bsd *table)
{
 const struct zfs2bsd *tmp;
 uint32_t zfs = 0;

 for (tmp = table; tmp->zb_bsd != 0; tmp++) {
  if (bsd & tmp->zb_bsd)
   zfs |= tmp->zb_zfs;
 }

 return (zfs);
}
