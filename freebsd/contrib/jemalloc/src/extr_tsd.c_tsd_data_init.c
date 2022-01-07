
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int tsd_t ;


 scalar_t__ config_debug ;
 int rtree_ctx_data_init (int ) ;
 int * tsd_offset_statep_get (int *) ;
 int tsd_rtree_ctxp_get_unsafe (int *) ;
 int tsd_tcache_enabled_data_init (int *) ;

__attribute__((used)) static bool
tsd_data_init(tsd_t *tsd) {




 rtree_ctx_data_init(tsd_rtree_ctxp_get_unsafe(tsd));
 *tsd_offset_statep_get(tsd) = config_debug ? 0 :
     (uint64_t)(uintptr_t)tsd;

 return tsd_tcache_enabled_data_init(tsd);
}
