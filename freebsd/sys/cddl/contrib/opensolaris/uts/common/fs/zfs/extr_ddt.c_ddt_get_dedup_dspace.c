
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int spa_t ;
struct TYPE_3__ {scalar_t__ dds_dsize; scalar_t__ dds_ref_dsize; int member_0; } ;
typedef TYPE_1__ ddt_stat_t ;


 int ddt_get_dedup_stats (int *,TYPE_1__*) ;

uint64_t
ddt_get_dedup_dspace(spa_t *spa)
{
 ddt_stat_t dds_total = { 0 };

 ddt_get_dedup_stats(spa, &dds_total);
 return (dds_total.dds_ref_dsize - dds_total.dds_dsize);
}
