
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_prop_t ;
typedef int uint64_t ;
struct TYPE_3__ {int spa_pool_props_object; int spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;


 int zap_lookup (int ,int ,int ,int,int,int *) ;
 int zpool_prop_to_name (int ) ;

__attribute__((used)) static void
spa_prop_find(spa_t *spa, zpool_prop_t prop, uint64_t *val)
{
 (void) zap_lookup(spa->spa_meta_objset, spa->spa_pool_props_object,
     zpool_prop_to_name(prop), sizeof (uint64_t), 1, val);
}
