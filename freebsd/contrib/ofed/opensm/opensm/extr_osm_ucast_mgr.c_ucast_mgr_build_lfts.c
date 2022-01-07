
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int port_order_list; TYPE_2__* p_subn; int p_log; } ;
typedef TYPE_3__ osm_ucast_mgr_t ;
struct TYPE_8__ {scalar_t__ port_prof_ignore_file; scalar_t__ guid_routing_order_file; } ;
struct TYPE_9__ {int sw_guid_tbl; int port_guid_tbl; TYPE_1__ opt; } ;


 int OSM_LOG (int ,int ,char*,scalar_t__) ;
 int OSM_LOG_DEBUG ;
 int OSM_LOG_ERROR ;
 int add_guid_to_order_list ;
 int add_port_to_order_list ;
 int cl_qlist_init (int *) ;
 int cl_qlist_remove_all (int *) ;
 int cl_qmap_apply_func (int *,int ,TYPE_3__*) ;
 int clear_prof_ignore_flag ;
 int mark_ignored_port ;
 scalar_t__ parse_node_map (scalar_t__,int ,TYPE_3__*) ;
 int sort_ports_by_switch_load (TYPE_3__*) ;
 int ucast_mgr_process_tbl ;

__attribute__((used)) static int ucast_mgr_build_lfts(osm_ucast_mgr_t * p_mgr)
{
 cl_qlist_init(&p_mgr->port_order_list);

 if (p_mgr->p_subn->opt.guid_routing_order_file) {
  OSM_LOG(p_mgr->p_log, OSM_LOG_DEBUG,
   "Fetching guid routing order file \'%s\'\n",
   p_mgr->p_subn->opt.guid_routing_order_file);

  if (parse_node_map(p_mgr->p_subn->opt.guid_routing_order_file,
       add_guid_to_order_list, p_mgr))
   OSM_LOG(p_mgr->p_log, OSM_LOG_ERROR, "ERR 3A0D: "
    "cannot parse guid routing order file \'%s\'\n",
    p_mgr->p_subn->opt.guid_routing_order_file);
 }
 sort_ports_by_switch_load(p_mgr);

 if (p_mgr->p_subn->opt.port_prof_ignore_file) {
  cl_qmap_apply_func(&p_mgr->p_subn->sw_guid_tbl,
       clear_prof_ignore_flag, ((void*)0));
  if (parse_node_map(p_mgr->p_subn->opt.port_prof_ignore_file,
       mark_ignored_port, p_mgr)) {
   OSM_LOG(p_mgr->p_log, OSM_LOG_ERROR, "ERR 3A0E: "
    "cannot parse port prof ignore file \'%s\'\n",
    p_mgr->p_subn->opt.port_prof_ignore_file);
  }
 }

 cl_qmap_apply_func(&p_mgr->p_subn->port_guid_tbl,
      add_port_to_order_list, p_mgr);

 cl_qmap_apply_func(&p_mgr->p_subn->sw_guid_tbl, ucast_mgr_process_tbl,
      p_mgr);

 cl_qlist_remove_all(&p_mgr->port_order_list);

 return 0;
}
