
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int p_log; TYPE_1__* p_subn; } ;
typedef TYPE_2__ osm_sm_t ;
typedef int buf ;
struct TYPE_4__ {int sm_state; } ;


 int FILE_ID ;
 int OSM_LOG_MSG_BOX (int ,int ,char*) ;
 int OSM_LOG_SYS ;
 int OSM_LOG_VERBOSE ;
 char* osm_get_sm_mgr_state_str (int ) ;
 int osm_log_v2 (int ,int ,int ,char*,char const*) ;
 int snprintf (char*,int,char*,char const*) ;

void osm_report_sm_state(osm_sm_t * sm)
{
 char buf[64];
 const char *state_str = osm_get_sm_mgr_state_str(sm->p_subn->sm_state);

 osm_log_v2(sm->p_log, OSM_LOG_SYS, FILE_ID, "Entering %s state\n", state_str);
 snprintf(buf, sizeof(buf), "ENTERING SM %s STATE", state_str);
 OSM_LOG_MSG_BOX(sm->p_log, OSM_LOG_VERBOSE, buf);
}
