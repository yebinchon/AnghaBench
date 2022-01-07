
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spa_t ;
typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef int ddt_t ;
struct TYPE_3__ {int dde_key; } ;
typedef TYPE_1__ ddt_entry_t ;
typedef int blkptr_t ;


 int BP_GET_DEDUP (int const*) ;
 int DDT_CLASSES ;
 int DDT_TYPES ;
 int ddt_key_fill (int *,int const*) ;
 int ddt_object_prefetch (int *,int,int,TYPE_1__*) ;
 int * ddt_select (int *,int const*) ;
 int zfs_dedup_prefetch ;

void
ddt_prefetch(spa_t *spa, const blkptr_t *bp)
{
 ddt_t *ddt;
 ddt_entry_t dde;

 if (!zfs_dedup_prefetch || bp == ((void*)0) || !BP_GET_DEDUP(bp))
  return;






 ddt = ddt_select(spa, bp);
 ddt_key_fill(&dde.dde_key, bp);

 for (enum ddt_type type = 0; type < DDT_TYPES; type++) {
  for (enum ddt_class class = 0; class < DDT_CLASSES; class++) {
   ddt_object_prefetch(ddt, type, class, &dde);
  }
 }
}
