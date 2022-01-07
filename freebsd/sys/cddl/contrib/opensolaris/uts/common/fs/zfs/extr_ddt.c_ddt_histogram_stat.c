
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ddt_stat_t ;
struct TYPE_3__ {int * ddh_stat; } ;
typedef TYPE_1__ ddt_histogram_t ;


 int bzero (int *,int) ;
 int ddt_stat_add (int *,int *,int ) ;

void
ddt_histogram_stat(ddt_stat_t *dds, const ddt_histogram_t *ddh)
{
 bzero(dds, sizeof (*dds));

 for (int h = 0; h < 64; h++)
  ddt_stat_add(dds, &ddh->ddh_stat[h], 0);
}
