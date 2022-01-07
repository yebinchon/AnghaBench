
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padctl_softc {int dummy; } ;
struct padctl_port {struct padctl_lane* lane; int enabled; } ;
struct padctl_lane {int dummy; } ;


 int nitems (struct padctl_port*) ;
 struct padctl_port* ports_tbl ;

__attribute__((used)) static struct padctl_port *
search_lane_port(struct padctl_softc *sc, struct padctl_lane *lane)
{
 int i;

 for (i = 0; i < nitems(ports_tbl); i++) {
  if (!ports_tbl[i].enabled)
   continue;
  if (ports_tbl[i].lane == lane)
   return (ports_tbl + i);
 }
 return (((void*)0));
}
