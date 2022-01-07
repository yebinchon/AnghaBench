
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {int fv_tx_prod; int fv_sf_buff_map; int fv_sf_tag; int fv_tx_ring_map; int fv_tx_ring_tag; scalar_t__ fv_sf_buff; int fv_tx_cnt; } ;
struct TYPE_3__ {int fv_sf_paddr; struct fv_desc* fv_tx_ring; } ;
struct fv_softc {TYPE_2__ fv_cdata; struct ifnet* fv_ifp; TYPE_1__ fv_rdata; } ;
struct fv_desc {int fv_devcs; int fv_stat; int fv_addr; } ;


 int ADCTL_Tx_SETUP ;
 int ADSTAT_OWN ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_TXPOLL ;
 int CSR_WRITE_4 (struct fv_softc*,int ,int) ;
 int DELAY (int) ;
 int ETHER_ADDR_LEN ;
 int FV_DMASIZE (int ) ;
 int FV_INC (int,int ) ;
 int FV_SFRAME_LEN ;
 int FV_TX_RING_CNT ;
 int IF_LLADDR (struct ifnet*) ;
 int bcopy (int ,int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int fv_set_maddr ;
 int if_foreach_llmaddr (struct ifnet*,int ,int *) ;
 int memset (int *,int,int ) ;

__attribute__((used)) static void
fv_setfilt(struct fv_softc *sc)
{
 uint16_t eaddr[(ETHER_ADDR_LEN+1)/2];
 struct fv_desc *sframe;
 int i;
 struct ifnet *ifp;
 uint16_t *sp;

 ifp = sc->fv_ifp;

 i = sc->fv_cdata.fv_tx_prod;
 FV_INC(sc->fv_cdata.fv_tx_prod, FV_TX_RING_CNT);
 sc->fv_cdata.fv_tx_cnt++;
 sframe = &sc->fv_rdata.fv_tx_ring[i];
 sp = (uint16_t *)sc->fv_cdata.fv_sf_buff;
 memset(sp, 0xff, FV_SFRAME_LEN);

 sframe->fv_addr = sc->fv_rdata.fv_sf_paddr;
 sframe->fv_devcs = ADCTL_Tx_SETUP | FV_DMASIZE(FV_SFRAME_LEN);

 i = if_foreach_llmaddr(ifp, fv_set_maddr, sp) * 6;

 bcopy(IF_LLADDR(sc->fv_ifp), eaddr, ETHER_ADDR_LEN);
 sp[90] = sp[91] = eaddr[0];
 sp[92] = sp[93] = eaddr[1];
 sp[94] = sp[95] = eaddr[2];

 sframe->fv_stat = ADSTAT_OWN;
 bus_dmamap_sync(sc->fv_cdata.fv_tx_ring_tag,
     sc->fv_cdata.fv_tx_ring_map, BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(sc->fv_cdata.fv_sf_tag,
     sc->fv_cdata.fv_sf_buff_map, BUS_DMASYNC_PREWRITE);
 CSR_WRITE_4(sc, CSR_TXPOLL, 0xFFFFFFFF);
 DELAY(10000);
}
