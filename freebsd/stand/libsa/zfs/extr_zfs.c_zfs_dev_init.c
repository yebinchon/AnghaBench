
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_2__ {int (* arch_zfs_probe ) () ;} ;


 int ENXIO ;
 int * STAILQ_FIRST (int *) ;
 int * STAILQ_NEXT (int *,int ) ;
 int STAILQ_REMOVE_AFTER (int *,int *,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 TYPE_1__ archsw ;
 int spa_link ;
 int stub1 () ;
 int zfs_init () ;
 int zfs_pools ;
 scalar_t__ zfs_spa_init (int *) ;

__attribute__((used)) static int
zfs_dev_init(void)
{
 spa_t *spa;
 spa_t *next;
 spa_t *prev;

 zfs_init();
 if (archsw.arch_zfs_probe == ((void*)0))
  return (ENXIO);
 archsw.arch_zfs_probe();

 prev = ((void*)0);
 spa = STAILQ_FIRST(&zfs_pools);
 while (spa != ((void*)0)) {
  next = STAILQ_NEXT(spa, spa_link);
  if (zfs_spa_init(spa)) {
   if (prev == ((void*)0))
    STAILQ_REMOVE_HEAD(&zfs_pools, spa_link);
   else
    STAILQ_REMOVE_AFTER(&zfs_pools, prev, spa_link);
  } else
   prev = spa;
  spa = next;
 }
 return (0);
}
