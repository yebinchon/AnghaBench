
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* p_subn; } ;
typedef TYPE_4__ osm_sm_t ;
struct TYPE_7__ {int disable_multicast; } ;
struct TYPE_9__ {scalar_t__ sm_state; TYPE_2__* p_osm; TYPE_1__ opt; } ;
struct TYPE_8__ {int stats; } ;


 int FALSE ;
 scalar_t__ IB_SMINFO_STATE_MASTER ;
 int osm_mcast_mgr_process (TYPE_4__*,int ) ;
 int wait_for_pending_transactions (int *) ;

__attribute__((used)) static void do_process_mgrp_queue(osm_sm_t * sm)
{
 if (sm->p_subn->sm_state != IB_SMINFO_STATE_MASTER)
  return;
 if (!sm->p_subn->opt.disable_multicast) {
  osm_mcast_mgr_process(sm, FALSE);
  wait_for_pending_transactions(&sm->p_subn->p_osm->stats);
 }
}
