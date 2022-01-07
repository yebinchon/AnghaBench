
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_softc {int dummy; } ;
struct port_event {int enabled; int ih_user; int (* ih ) (int ) ;} ;


 int FILTER_HANDLED ;
 int NGPIO ;
 int PCR_ISF ;
 int PORT_PCR (int) ;
 int READ4 (struct port_softc*,int ) ;
 int WRITE4 (struct port_softc*,int ,int) ;
 struct port_event* event_map ;
 int stub1 (int ) ;

__attribute__((used)) static int
port_intr(void *arg)
{
 struct port_event *pev;
 struct port_softc *sc;
 int reg;
 int i;

 sc = arg;

 for (i = 0; i < NGPIO; i++) {
  reg = READ4(sc, PORT_PCR(i));
  if (reg & PCR_ISF) {


   WRITE4(sc, PORT_PCR(i), reg);


   pev = &event_map[i];
   if (pev->enabled == 1) {
    if (pev->ih != ((void*)0)) {
     pev->ih(pev->ih_user);
    }
   }
  }
 }

 return (FILTER_HANDLED);
}
