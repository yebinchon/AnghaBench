
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kstat_delete (int *) ;
 int * vdc_ksp ;

void
vdev_cache_stat_fini(void)
{
 if (vdc_ksp != ((void*)0)) {
  kstat_delete(vdc_ksp);
  vdc_ksp = ((void*)0);
 }
}
