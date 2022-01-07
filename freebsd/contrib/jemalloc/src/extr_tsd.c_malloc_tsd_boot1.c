
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int* tsd_arenas_tdata_bypassp_get (int *) ;
 int tsd_boot1 () ;
 int * tsd_fetch () ;
 int tsd_slow_update (int *) ;

void
malloc_tsd_boot1(void) {
 tsd_boot1();
 tsd_t *tsd = tsd_fetch();

 tsd_slow_update(tsd);
 *tsd_arenas_tdata_bypassp_get(tsd) = 0;
}
