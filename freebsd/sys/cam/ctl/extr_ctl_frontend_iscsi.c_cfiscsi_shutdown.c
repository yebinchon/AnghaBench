
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfiscsi_softc {int lock; int sessions_cv; int accept_cv; int targets; int sessions; } ;


 int EBUSY ;
 int TAILQ_EMPTY (int *) ;
 int cfiscsi_data_wait_zone ;
 struct cfiscsi_softc cfiscsi_softc ;
 int cv_destroy (int *) ;
 int mtx_destroy (int *) ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static int
cfiscsi_shutdown(void)
{
 struct cfiscsi_softc *softc = &cfiscsi_softc;

 if (!TAILQ_EMPTY(&softc->sessions) || !TAILQ_EMPTY(&softc->targets))
  return (EBUSY);

 uma_zdestroy(cfiscsi_data_wait_zone);



 cv_destroy(&softc->sessions_cv);
 mtx_destroy(&softc->lock);
 return (0);
}
