
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ha_softc {TYPE_1__* ha_lso; } ;
struct TYPE_3__ {int so_rcv; } ;


 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SO_RCV ;
 int soclose (TYPE_1__*) ;
 int soupcall_clear (TYPE_1__*,int ) ;

__attribute__((used)) static void
ctl_ha_lclose(struct ha_softc *softc)
{

 if (softc->ha_lso) {
  SOCKBUF_LOCK(&softc->ha_lso->so_rcv);
  soupcall_clear(softc->ha_lso, SO_RCV);
  SOCKBUF_UNLOCK(&softc->ha_lso->so_rcv);
  soclose(softc->ha_lso);
  softc->ha_lso = ((void*)0);
 }
}
