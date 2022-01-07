
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int osm_madw_t ;
struct TYPE_2__ {int log; int mad_pool; int cc_disp_h; } ;
typedef TYPE_1__ osm_congestion_control_t ;


 int CL_ASSERT (int *) ;
 scalar_t__ CL_SUCCESS ;
 int OSM_LOG (int ,int ,char*) ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_EXIT (int ) ;
 int OSM_MSG_MAD_CC ;
 scalar_t__ cl_disp_post (int ,int ,int *,int *,int *) ;
 int osm_mad_pool_put (int ,int *) ;
 int osm_madw_copy_context (int *,int *) ;

__attribute__((used)) static void cc_mad_recv_callback(osm_madw_t * p_madw, void *bind_context,
     osm_madw_t * p_req_madw)
{
 osm_congestion_control_t *p_cc = bind_context;

 OSM_LOG_ENTER(p_cc->log);

 CL_ASSERT(p_madw);


 CL_ASSERT(p_req_madw != ((void*)0));

 osm_madw_copy_context(p_madw, p_req_madw);
 osm_mad_pool_put(p_cc->mad_pool, p_req_madw);



 if (cl_disp_post(p_cc->cc_disp_h, OSM_MSG_MAD_CC,
    p_madw, ((void*)0), ((void*)0)) != CL_SUCCESS) {
  OSM_LOG(p_cc->log, OSM_LOG_ERROR, "ERR C105: "
   "Congestion Control Dispatcher post failed\n");
  osm_mad_pool_put(p_cc->mad_pool, p_madw);
 }

 OSM_LOG_EXIT(p_cc->log);
}
