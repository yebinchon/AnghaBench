
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_subn; } ;
typedef TYPE_3__ osm_sm_t ;
typedef scalar_t__ osm_signal_t ;
struct TYPE_7__ {TYPE_1__* p_osm; } ;
struct TYPE_6__ {int perfmgr; } ;


 scalar_t__ OSM_SIGNAL_PERFMGR_SWEEP ;
 int osm_perfmgr_process (int *) ;
 int osm_state_mgr_process (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static void sm_process(osm_sm_t * sm, osm_signal_t signal)
{





  osm_state_mgr_process(sm, signal);
}
