
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_subn; } ;
typedef TYPE_3__ osm_sm_t ;
struct TYPE_7__ {TYPE_1__* p_osm; } ;
struct TYPE_6__ {int stats; } ;


 int osm_guid_mgr_process (TYPE_3__*) ;
 int wait_for_pending_transactions (int *) ;

__attribute__((used)) static void do_process_guid_queue(osm_sm_t *sm)
{
 osm_guid_mgr_process(sm);
 wait_for_pending_transactions(&sm->p_subn->p_osm->stats);
}
