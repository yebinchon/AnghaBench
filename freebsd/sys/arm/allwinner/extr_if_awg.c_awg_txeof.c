
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct emac_desc {int size; int status; } ;
struct TYPE_2__ {int next; scalar_t__ queued; struct emac_desc* desc_ring; int desc_map; int desc_tag; } ;
struct awg_softc {TYPE_1__ tx; int ifp; } ;
typedef int if_t ;


 int AWG_ASSERT_LOCKED (struct awg_softc*) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int TX_DESC_CTL ;
 int TX_HEADER_ERR ;
 int TX_LAST_DESC ;
 int TX_NEXT (int) ;
 int TX_PAYLOAD_ERR ;
 int awg_clean_txbuf (struct awg_softc*,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_inc_counter (int ,int ,int) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 int le32toh (int ) ;

__attribute__((used)) static void
awg_txeof(struct awg_softc *sc)
{
 struct emac_desc *desc;
 uint32_t status, size;
 if_t ifp;
 int i, prog;

 AWG_ASSERT_LOCKED(sc);

 bus_dmamap_sync(sc->tx.desc_tag, sc->tx.desc_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 ifp = sc->ifp;

 prog = 0;
 for (i = sc->tx.next; sc->tx.queued > 0; i = TX_NEXT(i)) {
  desc = &sc->tx.desc_ring[i];
  status = le32toh(desc->status);
  if ((status & TX_DESC_CTL) != 0)
   break;
  size = le32toh(desc->size);
  if (size & TX_LAST_DESC) {
   if ((status & (TX_HEADER_ERR | TX_PAYLOAD_ERR)) != 0)
    if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
   else
    if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  }
  prog++;
  awg_clean_txbuf(sc, i);
 }

 if (prog > 0) {
  sc->tx.next = i;
  if_setdrvflagbits(ifp, 0, IFF_DRV_OACTIVE);
 }
}
