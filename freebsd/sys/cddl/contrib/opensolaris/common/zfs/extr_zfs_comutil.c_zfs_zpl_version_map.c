
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version_spa; int version_zpl; } ;


 TYPE_1__* zfs_version_table ;

int
zfs_zpl_version_map(int spa_version)
{
 int i;
 int version = -1;

 for (i = 0; zfs_version_table[i].version_spa; i++) {
  if (spa_version >= zfs_version_table[i].version_spa)
   version = zfs_version_table[i].version_zpl;
 }

 return (version);
}
