
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct ha_softc {int ha_receiving; } ;


 int SU_OK ;
 int wakeup (int *) ;

__attribute__((used)) static int
ctl_ha_rupcall(struct socket *so, void *arg, int waitflag)
{
 struct ha_softc *softc = arg;

 wakeup(&softc->ha_receiving);
 return (SU_OK);
}
