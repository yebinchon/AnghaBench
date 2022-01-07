
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zfs_space_check_t ;
typedef int uint64_t ;
struct TYPE_10__ {TYPE_1__* bpo_phys; } ;
struct TYPE_11__ {TYPE_2__ spa_deferred_bpobj; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_12__ {TYPE_3__* dp_spa; } ;
typedef TYPE_4__ dsl_pool_t ;
struct TYPE_9__ {int bpo_bytes; } ;






 int panic (char*,int) ;
 int spa_get_checkpoint_space (TYPE_3__*) ;
 int spa_get_dspace (TYPE_3__*) ;
 int spa_get_slop_space (TYPE_3__*) ;

uint64_t
dsl_pool_adjustedsize(dsl_pool_t *dp, zfs_space_check_t slop_policy)
{
 spa_t *spa = dp->dp_spa;
 uint64_t space, resv, adjustedsize;
 uint64_t spa_deferred_frees =
     spa->spa_deferred_bpobj.bpo_phys->bpo_bytes;

 space = spa_get_dspace(spa)
     - spa_get_checkpoint_space(spa) - spa_deferred_frees;
 resv = spa_get_slop_space(spa);

 switch (slop_policy) {
 case 129:
  break;
 case 128:
  resv >>= 1;
  break;
 case 131:
  resv >>= 2;
  break;
 case 130:
  resv = 0;
  break;
 default:
  panic("invalid slop policy value: %d", slop_policy);
  break;
 }
 adjustedsize = (space >= resv) ? (space - resv) : 0;

 return (adjustedsize);
}
