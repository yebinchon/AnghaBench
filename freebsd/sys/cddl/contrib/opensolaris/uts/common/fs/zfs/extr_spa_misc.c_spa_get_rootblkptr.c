
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ub_rootbp; } ;
struct TYPE_5__ {TYPE_1__ spa_ubsync; } ;
typedef TYPE_2__ spa_t ;
typedef int blkptr_t ;



blkptr_t *
spa_get_rootblkptr(spa_t *spa)
{
 return (&spa->spa_ubsync.ub_rootbp);
}
