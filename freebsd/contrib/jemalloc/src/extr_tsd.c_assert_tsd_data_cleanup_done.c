
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int assert (int) ;
 int ** tsd_arenap_get_unsafe (int *) ;
 int* tsd_arenas_tdata_bypassp_get_unsafe (int *) ;
 int ** tsd_arenas_tdatap_get_unsafe (int *) ;
 int ** tsd_iarenap_get_unsafe (int *) ;
 int tsd_nominal (int *) ;
 int ** tsd_prof_tdatap_get_unsafe (int *) ;
 int* tsd_tcache_enabledp_get_unsafe (int *) ;

__attribute__((used)) static void
assert_tsd_data_cleanup_done(tsd_t *tsd) {
 assert(!tsd_nominal(tsd));
 assert(*tsd_arenap_get_unsafe(tsd) == ((void*)0));
 assert(*tsd_iarenap_get_unsafe(tsd) == ((void*)0));
 assert(*tsd_arenas_tdata_bypassp_get_unsafe(tsd) == 1);
 assert(*tsd_arenas_tdatap_get_unsafe(tsd) == ((void*)0));
 assert(*tsd_tcache_enabledp_get_unsafe(tsd) == 0);
 assert(*tsd_prof_tdatap_get_unsafe(tsd) == ((void*)0));
}
