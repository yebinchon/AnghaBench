
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int spa_t ;


 int B_TRUE ;
 int spa_vdev_set_common (int *,int ,char const*,int ) ;

int
spa_vdev_setpath(spa_t *spa, uint64_t guid, const char *newpath)
{
 return (spa_vdev_set_common(spa, guid, newpath, B_TRUE));
}
