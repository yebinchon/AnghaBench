
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfiscsi_softc {int sessions_cv; int lock; int sessions; } ;
struct cfiscsi_session {scalar_t__ cs_outstanding_ctl_pdus; int cs_conn; int * cs_target; int cs_waiting_for_data_out; } ;


 int KASSERT (int,char*) ;
 int M_CFISCSI ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct cfiscsi_session*,int ) ;
 int cfiscsi_session_unregister_initiator (struct cfiscsi_session*) ;
 struct cfiscsi_softc cfiscsi_softc ;
 int cfiscsi_target_release (int *) ;
 int cs_next ;
 int cv_signal (int *) ;
 int free (struct cfiscsi_session*,int ) ;
 int icl_conn_close (int ) ;
 int icl_conn_free (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
cfiscsi_session_delete(struct cfiscsi_session *cs)
{
 struct cfiscsi_softc *softc;

 softc = &cfiscsi_softc;

 KASSERT(cs->cs_outstanding_ctl_pdus == 0,
     ("destroying session with outstanding CTL pdus"));
 KASSERT(TAILQ_EMPTY(&cs->cs_waiting_for_data_out),
     ("destroying session with non-empty queue"));

 mtx_lock(&softc->lock);
 TAILQ_REMOVE(&softc->sessions, cs, cs_next);
 mtx_unlock(&softc->lock);

 cfiscsi_session_unregister_initiator(cs);
 if (cs->cs_target != ((void*)0))
  cfiscsi_target_release(cs->cs_target);
 icl_conn_close(cs->cs_conn);
 icl_conn_free(cs->cs_conn);
 free(cs, M_CFISCSI);
 cv_signal(&softc->sessions_cv);
}
