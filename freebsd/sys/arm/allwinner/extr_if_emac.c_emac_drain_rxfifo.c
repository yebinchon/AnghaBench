
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct emac_softc {int dummy; } ;


 scalar_t__ EMAC_READ_REG (struct emac_softc*,int ) ;
 int EMAC_RX_FBC ;
 int EMAC_RX_IO_DATA ;

__attribute__((used)) static void
emac_drain_rxfifo(struct emac_softc *sc)
{
 uint32_t data;

 while (EMAC_READ_REG(sc, EMAC_RX_FBC) > 0)
  data = EMAC_READ_REG(sc, EMAC_RX_IO_DATA);
}
