
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; } ;
typedef TYPE_1__ tsd_t ;


 int assert (int) ;
 int assert_tsd_data_cleanup_done (TYPE_1__*) ;
 int rtree_ctx_data_init (int ) ;
 int* tsd_arenas_tdata_bypassp_get (TYPE_1__*) ;
 int* tsd_reentrancy_levelp_get (TYPE_1__*) ;
 int tsd_rtree_ctxp_get_unsafe (TYPE_1__*) ;
 scalar_t__ tsd_state_minimal_initialized ;
 scalar_t__ tsd_state_reincarnated ;
 int* tsd_tcache_enabledp_get_unsafe (TYPE_1__*) ;

__attribute__((used)) static bool
tsd_data_init_nocleanup(tsd_t *tsd) {
 assert(tsd->state == tsd_state_reincarnated ||
     tsd->state == tsd_state_minimal_initialized);





 rtree_ctx_data_init(tsd_rtree_ctxp_get_unsafe(tsd));
 *tsd_arenas_tdata_bypassp_get(tsd) = 1;
 *tsd_tcache_enabledp_get_unsafe(tsd) = 0;
 *tsd_reentrancy_levelp_get(tsd) = 1;
 assert_tsd_data_cleanup_done(tsd);

 return 0;
}
