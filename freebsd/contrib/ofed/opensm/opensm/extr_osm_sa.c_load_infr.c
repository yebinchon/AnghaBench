
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int h_bind; } ;
struct TYPE_11__ {TYPE_1__ mad_ctrl; } ;
struct TYPE_12__ {int lock; int log; int subn; TYPE_2__ sa; } ;
typedef TYPE_3__ osm_opensm_t ;
typedef int osm_mad_addr_t ;
struct TYPE_13__ {int inform_record; int report_addr; TYPE_2__* sa; int h_bind; } ;
typedef TYPE_4__ osm_infr_t ;
typedef int ib_inform_info_record_t ;


 int OSM_LOG (int *,int ,char*) ;
 int OSM_LOG_DEBUG ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_VERBOSE ;
 int cl_plock_excl_acquire (int *) ;
 int cl_plock_release (int *) ;
 scalar_t__ osm_infr_get_by_rec (int *,int *,TYPE_4__*) ;
 int osm_infr_insert_to_db (int *,int *,TYPE_4__*) ;
 TYPE_4__* osm_infr_new (TYPE_4__*) ;

__attribute__((used)) static int load_infr(osm_opensm_t * p_osm, ib_inform_info_record_t * iir,
       osm_mad_addr_t * addr)
{
 osm_infr_t infr, *p_infr;
 int ret = 0;

 infr.h_bind = p_osm->sa.mad_ctrl.h_bind;
 infr.sa = &p_osm->sa;


 infr.report_addr = *addr;
 infr.inform_record = *iir;

 cl_plock_excl_acquire(&p_osm->lock);
 if (osm_infr_get_by_rec(&p_osm->subn, &p_osm->log, &infr)) {
  OSM_LOG(&p_osm->log, OSM_LOG_VERBOSE,
   "InformInfo Record already exists\n");
  goto _out;
 }

 if (!(p_infr = osm_infr_new(&infr))) {
  OSM_LOG(&p_osm->log, OSM_LOG_ERROR,
   "cannot allocate new infr struct\n");
  ret = -1;
  goto _out;
 }

 OSM_LOG(&p_osm->log, OSM_LOG_DEBUG, "adding InformInfo Record...\n");

 osm_infr_insert_to_db(&p_osm->subn, &p_osm->log, p_infr);

_out:
 cl_plock_release(&p_osm->lock);

 return ret;
}
