
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int sci_dspace; } ;
struct TYPE_5__ {TYPE_1__ spa_checkpoint_info; } ;
typedef TYPE_2__ spa_t ;



uint64_t
spa_get_checkpoint_space(spa_t *spa)
{
 return (spa->spa_checkpoint_info.sci_dspace);
}
