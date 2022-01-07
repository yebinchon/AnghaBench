
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfiscsi_target {int ct_online; struct cfiscsi_softc* ct_softc; } ;
struct cfiscsi_softc {int * listener; int lock; int online; } ;


 int cfiscsi_accept ;
 int icl_listen_free (int *) ;
 int * icl_listen_new (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
cfiscsi_online(void *arg)
{
 struct cfiscsi_softc *softc;
 struct cfiscsi_target *ct;
 int online;

 ct = (struct cfiscsi_target *)arg;
 softc = ct->ct_softc;

 mtx_lock(&softc->lock);
 if (ct->ct_online) {
  mtx_unlock(&softc->lock);
  return;
 }
 ct->ct_online = 1;
 online = softc->online++;
 mtx_unlock(&softc->lock);
 if (online > 0)
  return;






}
