
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_softc {int tpc_timeout; int ctl_lock; int tpc_tokens; int tpc_lock; } ;


 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int ,int ,struct ctl_softc*) ;
 int hz ;
 int mtx_init (int *,char*,int *,int ) ;
 int tpc_timeout ;

void
ctl_tpc_init(struct ctl_softc *softc)
{

 mtx_init(&softc->tpc_lock, "CTL TPC mutex", ((void*)0), MTX_DEF);
 TAILQ_INIT(&softc->tpc_tokens);
 callout_init_mtx(&softc->tpc_timeout, &softc->ctl_lock, 0);
 callout_reset(&softc->tpc_timeout, hz, tpc_timeout, softc);
}
