
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int spa_condensing_indirect; int spa_condensing_indirect_phys; int spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;


 int DMU_POOL_CONDENSING_INDIRECT ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int ENOENT ;
 int spa_condensing_indirect_create (TYPE_1__*) ;
 scalar_t__ spa_writeable (TYPE_1__*) ;
 int zap_lookup (int ,int ,int ,int,int,int *) ;

int
spa_condense_init(spa_t *spa)
{
 int error = zap_lookup(spa->spa_meta_objset,
     DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_CONDENSING_INDIRECT, sizeof (uint64_t),
     sizeof (spa->spa_condensing_indirect_phys) / sizeof (uint64_t),
     &spa->spa_condensing_indirect_phys);
 if (error == 0) {
  if (spa_writeable(spa)) {
   spa->spa_condensing_indirect =
       spa_condensing_indirect_create(spa);
  }
  return (0);
 } else if (error == ENOENT) {
  return (0);
 } else {
  return (error);
 }
}
