
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfiscsi_softc {int targets; int sessions; int accept_cv; int sessions_cv; int lock; } ;
struct cfiscsi_data_wait {int dummy; } ;


 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int UMA_ALIGN_PTR ;
 int bzero (struct cfiscsi_softc*,int) ;
 int cfiscsi_data_wait_zone ;
 struct cfiscsi_softc cfiscsi_softc ;
 int cv_init (int *,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static int
cfiscsi_init(void)
{
 struct cfiscsi_softc *softc;

 softc = &cfiscsi_softc;
 bzero(softc, sizeof(*softc));
 mtx_init(&softc->lock, "cfiscsi", ((void*)0), MTX_DEF);

 cv_init(&softc->sessions_cv, "cfiscsi_sessions");



 TAILQ_INIT(&softc->sessions);
 TAILQ_INIT(&softc->targets);

 cfiscsi_data_wait_zone = uma_zcreate("cfiscsi_data_wait",
     sizeof(struct cfiscsi_data_wait), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);

 return (0);
}
