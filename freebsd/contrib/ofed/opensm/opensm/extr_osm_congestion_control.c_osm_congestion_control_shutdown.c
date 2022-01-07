
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bind_handle; int log; int cc_disp_h; } ;
typedef TYPE_1__ osm_congestion_control_t ;


 scalar_t__ OSM_BIND_INVALID_HANDLE ;
 int OSM_LOG (int ,int ,char*) ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_EXIT (int ) ;
 int cl_disp_unregister (int ) ;

void osm_congestion_control_shutdown(osm_congestion_control_t * p_cc)
{
 OSM_LOG_ENTER(p_cc->log);
 if (p_cc->bind_handle == OSM_BIND_INVALID_HANDLE) {
  OSM_LOG(p_cc->log, OSM_LOG_ERROR,
   "ERR C108: No previous bind\n");
  goto Exit;
 }
 cl_disp_unregister(p_cc->cc_disp_h);
Exit:
 OSM_LOG_EXIT(p_cc->log);
}
