
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfiscsi_session {int cs_terminating; int cs_handoff_in_progress; int cs_conn; int cs_callout; int cs_lock; int cs_maintenance_cv; } ;


 int CFISCSI_SESSION_DEBUG (struct cfiscsi_session*,char*) ;
 int CFISCSI_SESSION_LOCK (struct cfiscsi_session*) ;
 int CFISCSI_SESSION_UNLOCK (struct cfiscsi_session*) ;
 int callout_drain (int *) ;
 int cfiscsi_session_delete (struct cfiscsi_session*) ;
 int cfiscsi_session_terminate_tasks (struct cfiscsi_session*) ;
 int cv_wait (int *,int *) ;
 int icl_conn_close (int ) ;
 int kthread_exit () ;

__attribute__((used)) static void
cfiscsi_maintenance_thread(void *arg)
{
 struct cfiscsi_session *cs;

 cs = arg;

 for (;;) {
  CFISCSI_SESSION_LOCK(cs);
  if (cs->cs_terminating == 0 || cs->cs_handoff_in_progress)
   cv_wait(&cs->cs_maintenance_cv, &cs->cs_lock);
  CFISCSI_SESSION_UNLOCK(cs);

  if (cs->cs_terminating && cs->cs_handoff_in_progress == 0) {







   callout_drain(&cs->cs_callout);
   icl_conn_close(cs->cs_conn);





   cfiscsi_session_terminate_tasks(cs);
   cfiscsi_session_delete(cs);
   kthread_exit();
   return;
  }
  CFISCSI_SESSION_DEBUG(cs, "nothing to do");
 }
}
