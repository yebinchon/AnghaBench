
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int modified_time; int lease_period; } ;
typedef TYPE_2__ osm_svcr_t ;
struct TYPE_7__ {int sr_timer; } ;
struct TYPE_9__ {int lock; TYPE_1__ sa; int log; int subn; } ;
typedef TYPE_3__ osm_opensm_t ;
typedef int ib_service_record_t ;


 int OSM_LOG (int *,int ,char*) ;
 int OSM_LOG_DEBUG ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_VERBOSE ;
 int cl_plock_excl_acquire (int *) ;
 int cl_plock_release (int *) ;
 int cl_timer_trim (int *,int) ;
 scalar_t__ osm_svcr_get_by_rid (int *,int *,int *) ;
 int osm_svcr_insert_to_db (int *,int *,TYPE_2__*) ;
 TYPE_2__* osm_svcr_new (int *) ;

__attribute__((used)) static int load_svcr(osm_opensm_t * p_osm, ib_service_record_t * sr,
       uint32_t modified_time, uint32_t lease_period)
{
 osm_svcr_t *p_svcr;
 int ret = 0;

 cl_plock_excl_acquire(&p_osm->lock);

 if (osm_svcr_get_by_rid(&p_osm->subn, &p_osm->log, sr)) {
  OSM_LOG(&p_osm->log, OSM_LOG_VERBOSE,
   "ServiceRecord already exists\n");
  goto _out;
 }

 if (!(p_svcr = osm_svcr_new(sr))) {
  OSM_LOG(&p_osm->log, OSM_LOG_ERROR,
   "cannot allocate new service struct\n");
  ret = -1;
  goto _out;
 }

 p_svcr->modified_time = modified_time;
 p_svcr->lease_period = lease_period;

 OSM_LOG(&p_osm->log, OSM_LOG_DEBUG, "adding ServiceRecord...\n");

 osm_svcr_insert_to_db(&p_osm->subn, &p_osm->log, p_svcr);

 if (lease_period != 0xffffffff)
  cl_timer_trim(&p_osm->sa.sr_timer, 1000);

_out:
 cl_plock_release(&p_osm->lock);

 return ret;
}
