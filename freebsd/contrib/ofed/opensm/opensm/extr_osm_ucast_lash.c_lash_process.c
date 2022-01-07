
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int osm_log_t ;
struct TYPE_11__ {int balance_limit; scalar_t__ vl_min; TYPE_1__* p_osm; } ;
typedef TYPE_2__ lash_t ;
struct TYPE_10__ {int log; } ;


 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 int discover_network_properties (TYPE_2__*) ;
 int free_lash_structures (TYPE_2__*) ;
 int init_lash_structures (TYPE_2__*) ;
 int lash_cleanup (TYPE_2__*) ;
 int lash_core (TYPE_2__*) ;
 int populate_fwd_tbls (TYPE_2__*) ;
 int process_switches (TYPE_2__*) ;

__attribute__((used)) static int lash_process(void *context)
{
 lash_t *p_lash = context;
 osm_log_t *p_log = &p_lash->p_osm->log;
 int status = 0;

 OSM_LOG_ENTER(p_log);

 p_lash->balance_limit = 6;


 lash_cleanup(p_lash);

 status = discover_network_properties(p_lash);
 if (status)
  goto Exit;

 status = init_lash_structures(p_lash);
 if (status)
  goto Exit;

 process_switches(p_lash);

 status = lash_core(p_lash);
 if (status)
  goto Exit;

 populate_fwd_tbls(p_lash);

Exit:
 if (p_lash->vl_min)
  free_lash_structures(p_lash);
 OSM_LOG_EXIT(p_log);

 return status;
}
