
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_softc {int dummy; } ;
struct port_event {void (* ih ) (void*) ;int pevt; int enabled; void* ih_user; } ;
typedef enum ev_type { ____Placeholder_ev_type } ev_type ;
 int PCR_DMA_EE ;
 int PCR_DMA_FE ;
 int PCR_DMA_RE ;
 int PCR_INT_EE ;
 int PCR_INT_FE ;
 int PCR_INT_LO ;
 int PCR_INT_LZ ;
 int PCR_INT_RE ;
 int PCR_IRQC_M ;
 int PCR_IRQC_S ;
 int PORT_PCR (int) ;
 int READ4 (struct port_softc*,int ) ;
 int WRITE4 (struct port_softc*,int ,int) ;
 struct port_event* event_map ;
 struct port_softc* port_sc ;

int
port_setup(int pnum, enum ev_type pevt, void (*ih)(void *), void *ih_user)
{
 struct port_event *pev;
 struct port_softc *sc;
 int reg;
 int val;

 sc = port_sc;

 switch (pevt) {
 case 133:
  val = PCR_DMA_RE;
  break;
 case 134:
  val = PCR_DMA_FE;
  break;
 case 135:
  val = PCR_DMA_EE;
  break;
 case 129:
  val = PCR_INT_LZ;
  break;
 case 128:
  val = PCR_INT_RE;
  break;
 case 131:
  val = PCR_INT_FE;
  break;
 case 132:
  val = PCR_INT_EE;
  break;
 case 130:
  val = PCR_INT_LO;
  break;
 default:
  return (-1);
 }

 reg = READ4(sc, PORT_PCR(pnum));
 reg &= ~(PCR_IRQC_M << PCR_IRQC_S);
 reg |= (val << PCR_IRQC_S);
 WRITE4(sc, PORT_PCR(pnum), reg);

 pev = &event_map[pnum];
 pev->ih = ih;
 pev->ih_user = ih_user;
 pev->pevt = pevt;
 pev->enabled = 1;

 return (0);
}
