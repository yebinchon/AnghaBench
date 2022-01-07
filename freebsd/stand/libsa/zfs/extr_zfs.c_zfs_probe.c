
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int spa_guid; } ;
typedef TYPE_1__ spa_t ;


 int vdev_probe (int ,void*,TYPE_1__**) ;
 int vdev_read ;

__attribute__((used)) static int
zfs_probe(int fd, uint64_t *pool_guid)
{
 spa_t *spa;
 int ret;

 spa = ((void*)0);
 ret = vdev_probe(vdev_read, (void *)(uintptr_t)fd, &spa);
 if (ret == 0 && pool_guid != ((void*)0))
  *pool_guid = spa->spa_guid;
 return (ret);
}
