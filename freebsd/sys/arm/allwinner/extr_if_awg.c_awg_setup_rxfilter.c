
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct awg_softc {int ifp; } ;
typedef int if_t ;


 int AWG_ASSERT_LOCKED (struct awg_softc*) ;
 int DIS_ADDR_FILTER ;
 int EMAC_ADDR_HIGH (int ) ;
 int EMAC_ADDR_LOW (int ) ;
 int EMAC_RX_FRM_FLT ;
 int EMAC_RX_HASH_0 ;
 int EMAC_RX_HASH_1 ;
 int HASH_MULTICAST ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int* IF_LLADDR (int ) ;
 int RX_ALL_MULTICAST ;
 int WR4 (struct awg_softc*,int ,int) ;
 int awg_hash_maddr ;
 scalar_t__ if_foreach_llmaddr (int ,int ,int*) ;
 int if_getflags (int ) ;

__attribute__((used)) static void
awg_setup_rxfilter(struct awg_softc *sc)
{
 uint32_t val, hash[2], machi, maclo;
 uint8_t *eaddr;
 if_t ifp;

 AWG_ASSERT_LOCKED(sc);

 ifp = sc->ifp;
 val = 0;
 hash[0] = hash[1] = 0;

 if (if_getflags(ifp) & IFF_PROMISC)
  val |= DIS_ADDR_FILTER;
 else if (if_getflags(ifp) & IFF_ALLMULTI) {
  val |= RX_ALL_MULTICAST;
  hash[0] = hash[1] = ~0;
 } else if (if_foreach_llmaddr(ifp, awg_hash_maddr, hash) > 0)
  val |= HASH_MULTICAST;


 eaddr = IF_LLADDR(ifp);
 machi = (eaddr[5] << 8) | eaddr[4];
 maclo = (eaddr[3] << 24) | (eaddr[2] << 16) | (eaddr[1] << 8) |
    (eaddr[0] << 0);
 WR4(sc, EMAC_ADDR_HIGH(0), machi);
 WR4(sc, EMAC_ADDR_LOW(0), maclo);


 WR4(sc, EMAC_RX_HASH_0, hash[1]);
 WR4(sc, EMAC_RX_HASH_1, hash[0]);


 WR4(sc, EMAC_RX_FRM_FLT, val);
}
