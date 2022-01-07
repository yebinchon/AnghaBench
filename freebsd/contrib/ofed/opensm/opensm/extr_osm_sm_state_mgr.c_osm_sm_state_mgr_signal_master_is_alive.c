
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_log; scalar_t__ retry_number; } ;
typedef TYPE_1__ osm_sm_t ;


 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_EXIT (int ) ;

void osm_sm_state_mgr_signal_master_is_alive(osm_sm_t * sm)
{
 OSM_LOG_ENTER(sm->p_log);
 sm->retry_number = 0;
 OSM_LOG_EXIT(sm->p_log);
}
