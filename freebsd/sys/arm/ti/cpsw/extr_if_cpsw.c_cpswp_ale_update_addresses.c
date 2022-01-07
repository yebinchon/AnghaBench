
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sockaddr_dl {int dummy; } ;
struct cpswp_softc {int vlan; int unit; TYPE_2__* ifp; TYPE_3__* swsc; } ;
struct TYPE_8__ {scalar_t__ dualemac; } ;
struct TYPE_7__ {TYPE_1__* if_addr; } ;
struct TYPE_6__ {scalar_t__ ifa_addr; } ;


 int ALE_MCAST_FWD ;
 int ALE_TYPE_ADDR ;
 int ALE_TYPE_VLAN_ADDR ;
 int CPSW_PORT_P_SA_HI (int) ;
 int CPSW_PORT_P_SA_LO (int) ;
 int* LLADDR (struct sockaddr_dl*) ;
 int cpsw_ale_remove_all_mc_entries (TYPE_3__*) ;
 int cpsw_ale_write_entry (TYPE_3__*,int,int*) ;
 int cpsw_write_4 (TYPE_3__*,int ,int) ;
 int cpswp_set_maddr ;
 int if_foreach_llmaddr (TYPE_2__*,int ,struct cpswp_softc*) ;

__attribute__((used)) static int
cpswp_ale_update_addresses(struct cpswp_softc *sc, int purge)
{
 uint8_t *mac;
 uint32_t ale_entry[3], ale_type, portmask;

 if (sc->swsc->dualemac) {
  ale_type = ALE_TYPE_VLAN_ADDR << 28 | sc->vlan << 16;
  portmask = 1 << (sc->unit + 1) | 1 << 0;
 } else {
  ale_type = ALE_TYPE_ADDR << 28;
  portmask = 7;
 }






 mac = LLADDR((struct sockaddr_dl *)sc->ifp->if_addr->ifa_addr);
 ale_entry[0] = mac[2] << 24 | mac[3] << 16 | mac[4] << 8 | mac[5];
 ale_entry[1] = ale_type | mac[0] << 8 | mac[1];
 ale_entry[2] = 0;
 cpsw_ale_write_entry(sc->swsc, 0 + 2 * sc->unit, ale_entry);


 cpsw_write_4(sc->swsc, CPSW_PORT_P_SA_HI(sc->unit + 1),
     mac[3] << 24 | mac[2] << 16 | mac[1] << 8 | mac[0]);
 cpsw_write_4(sc->swsc, CPSW_PORT_P_SA_LO(sc->unit + 1),
     mac[5] << 8 | mac[4]);


 ale_entry[0] = 0xffffffff;

 ale_entry[1] = ALE_MCAST_FWD | ale_type | 0xffff;
 ale_entry[2] = portmask << 2;
 cpsw_ale_write_entry(sc->swsc, 1 + 2 * sc->unit, ale_entry);



 if (purge)
  cpsw_ale_remove_all_mc_entries(sc->swsc);


 if_foreach_llmaddr(sc->ifp, cpswp_set_maddr, sc);

 return (0);
}
