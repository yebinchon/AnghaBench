
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ ub_checkpoint_txg; } ;
struct TYPE_5__ {scalar_t__ spa_first_txg; TYPE_1__ spa_uberblock; } ;
typedef TYPE_2__ spa_t ;



uint64_t
spa_min_claim_txg(spa_t *spa)
{
 uint64_t checkpoint_txg = spa->spa_uberblock.ub_checkpoint_txg;

 if (checkpoint_txg != 0)
  return (checkpoint_txg + 1);

 return (spa->spa_first_txg);
}
