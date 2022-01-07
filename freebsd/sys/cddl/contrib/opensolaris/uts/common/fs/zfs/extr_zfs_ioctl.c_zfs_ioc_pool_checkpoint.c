
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int spa_checkpoint (char const*) ;

__attribute__((used)) static int
zfs_ioc_pool_checkpoint(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
 return (spa_checkpoint(poolname));
}
