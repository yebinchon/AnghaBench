
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int osm_madw_t ;
struct TYPE_3__ {scalar_t__ thread_state; int log; int cc_poller_wakeup; int mad_queue; int mad_queue_lock; } ;
typedef TYPE_1__ osm_congestion_control_t ;


 int EVENT_NO_TIMEOUT ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_EXIT (int ) ;
 scalar_t__ OSM_THREAD_STATE_NONE ;
 scalar_t__ OSM_THREAD_STATE_RUN ;
 int TRUE ;
 int cc_poller_send (TYPE_1__*,int *) ;
 int cl_event_wait_on (int *,int ,int ) ;
 scalar_t__ cl_qlist_end (int *) ;
 scalar_t__ cl_qlist_remove_head (int *) ;
 int cl_spinlock_acquire (int *) ;
 int cl_spinlock_release (int *) ;

__attribute__((used)) static void cc_poller(void *p_ptr)
{
 osm_congestion_control_t *p_cc = p_ptr;
 osm_madw_t *p_madw;

 OSM_LOG_ENTER(p_cc->log);

 if (p_cc->thread_state == OSM_THREAD_STATE_NONE)
  p_cc->thread_state = OSM_THREAD_STATE_RUN;

 while (p_cc->thread_state == OSM_THREAD_STATE_RUN) {
  cl_spinlock_acquire(&p_cc->mad_queue_lock);

  p_madw = (osm_madw_t *) cl_qlist_remove_head(&p_cc->mad_queue);

  cl_spinlock_release(&p_cc->mad_queue_lock);

  if (p_madw != (osm_madw_t *) cl_qlist_end(&p_cc->mad_queue))
   cc_poller_send(p_cc, p_madw);
  else
   cl_event_wait_on(&p_cc->cc_poller_wakeup,
      EVENT_NO_TIMEOUT, TRUE);
 }

 OSM_LOG_EXIT(p_cc->log);
}
