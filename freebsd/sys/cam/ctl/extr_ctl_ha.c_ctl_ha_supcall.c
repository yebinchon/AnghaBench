
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct ha_softc {int dummy; } ;


 int SU_OK ;
 int ctl_ha_conn_wake (struct ha_softc*) ;

__attribute__((used)) static int
ctl_ha_supcall(struct socket *so, void *arg, int waitflag)
{
 struct ha_softc *softc = arg;

 ctl_ha_conn_wake(softc);
 return (SU_OK);
}
