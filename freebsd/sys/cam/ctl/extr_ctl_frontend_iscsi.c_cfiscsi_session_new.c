
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfiscsi_softc {int lock; int sessions; scalar_t__ last_session_id; } ;
struct cfiscsi_session {int cs_ctl_initid; int cs_handoff_in_progress; int cs_callout; scalar_t__ cs_id; TYPE_1__* cs_conn; int cs_lock; int cs_login_cv; int cs_maintenance_cv; int cs_waiting_for_data_out; int cs_outstanding_ctl_pdus; } ;
struct TYPE_2__ {struct cfiscsi_session* ic_prv0; int ic_error; int ic_receive; } ;


 int CFISCSI_SESSION_WARN (struct cfiscsi_session*,char*,int) ;
 int CFISCSI_WARN (char*) ;
 int MTX_DEF ;
 int M_CFISCSI ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct cfiscsi_session*,int ) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,struct cfiscsi_session*) ;
 int cfiscsi_callout ;
 int cfiscsi_error_callback ;
 int cfiscsi_maintenance_thread ;
 int cfiscsi_receive_callback ;
 int cs_next ;
 int cv_init (int *,char*) ;
 int free (struct cfiscsi_session*,int ) ;
 int hz ;
 TYPE_1__* icl_new_conn (char const*,int,char*,int *) ;
 int kthread_add (int ,struct cfiscsi_session*,int *,int *,int ,int ,char*) ;
 struct cfiscsi_session* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int refcount_init (int *,int ) ;

__attribute__((used)) static struct cfiscsi_session *
cfiscsi_session_new(struct cfiscsi_softc *softc, const char *offload)
{
 struct cfiscsi_session *cs;
 int error;

 cs = malloc(sizeof(*cs), M_CFISCSI, M_NOWAIT | M_ZERO);
 if (cs == ((void*)0)) {
  CFISCSI_WARN("malloc failed");
  return (((void*)0));
 }
 cs->cs_ctl_initid = -1;

 refcount_init(&cs->cs_outstanding_ctl_pdus, 0);
 TAILQ_INIT(&cs->cs_waiting_for_data_out);
 mtx_init(&cs->cs_lock, "cfiscsi_lock", ((void*)0), MTX_DEF);
 cv_init(&cs->cs_maintenance_cv, "cfiscsi_mt");
 cs->cs_handoff_in_progress = 1;

 cs->cs_conn = icl_new_conn(offload, 0, "cfiscsi", &cs->cs_lock);
 if (cs->cs_conn == ((void*)0)) {
  free(cs, M_CFISCSI);
  return (((void*)0));
 }
 cs->cs_conn->ic_receive = cfiscsi_receive_callback;
 cs->cs_conn->ic_error = cfiscsi_error_callback;
 cs->cs_conn->ic_prv0 = cs;

 error = kthread_add(cfiscsi_maintenance_thread, cs, ((void*)0), ((void*)0), 0, 0, "cfiscsimt");
 if (error != 0) {
  CFISCSI_SESSION_WARN(cs, "kthread_add(9) failed with error %d", error);
  free(cs, M_CFISCSI);
  return (((void*)0));
 }

 mtx_lock(&softc->lock);
 cs->cs_id = ++softc->last_session_id;
 TAILQ_INSERT_TAIL(&softc->sessions, cs, cs_next);
 mtx_unlock(&softc->lock);




 callout_init(&cs->cs_callout, 1);
 callout_reset(&cs->cs_callout, 1 * hz, cfiscsi_callout, cs);

 return (cs);
}
