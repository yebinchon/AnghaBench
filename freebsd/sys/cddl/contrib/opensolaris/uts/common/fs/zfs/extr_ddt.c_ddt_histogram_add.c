
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ddh_stat; } ;
typedef TYPE_1__ ddt_histogram_t ;


 int ddt_stat_add (int *,int *,int ) ;

void
ddt_histogram_add(ddt_histogram_t *dst, const ddt_histogram_t *src)
{
 for (int h = 0; h < 64; h++)
  ddt_stat_add(&dst->ddh_stat[h], &src->ddh_stat[h], 0);
}
