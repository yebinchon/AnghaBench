
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ** spa_ddt; } ;
typedef TYPE_1__ spa_t ;
typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef int ddt_t ;
struct TYPE_6__ {int dde_key; } ;
typedef TYPE_2__ ddt_entry_t ;
typedef int boolean_t ;
typedef int blkptr_t ;


 size_t BP_GET_CHECKSUM (int const*) ;
 int BP_GET_DEDUP (int const*) ;
 int B_FALSE ;
 int B_TRUE ;
 int DDT_CLASS_UNIQUE ;
 int DDT_TYPES ;
 int ddt_key_fill (int *,int const*) ;
 scalar_t__ ddt_object_lookup (int *,int,int,TYPE_2__*) ;

boolean_t
ddt_class_contains(spa_t *spa, enum ddt_class max_class, const blkptr_t *bp)
{
 ddt_t *ddt;
 ddt_entry_t dde;

 if (!BP_GET_DEDUP(bp))
  return (B_FALSE);

 if (max_class == DDT_CLASS_UNIQUE)
  return (B_TRUE);

 ddt = spa->spa_ddt[BP_GET_CHECKSUM(bp)];

 ddt_key_fill(&dde.dde_key, bp);

 for (enum ddt_type type = 0; type < DDT_TYPES; type++)
  for (enum ddt_class class = 0; class <= max_class; class++)
   if (ddt_object_lookup(ddt, type, class, &dde) == 0)
    return (B_TRUE);

 return (B_FALSE);
}
