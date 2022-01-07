
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct cpswp_softc {int swsc; TYPE_1__* mii; int unit; } ;
typedef int device_t ;
struct TYPE_2__ {int mii_media_active; } ;


 int CPSW_DEBUGF (int ,char*) ;
 int CPSW_SL_MACCONTROL (int ) ;
 int CPSW_SL_MACTL_FULLDUPLEX ;
 int CPSW_SL_MACTL_GIG ;
 int CPSW_SL_MACTL_IFCTL_A ;
 int CPSW_SL_MACTL_IFCTL_B ;





 int IFM_FDX ;
 int IFM_SUBTYPE (int) ;
 int cpsw_read_4 (int ,int) ;
 int cpsw_write_4 (int ,int,int) ;
 struct cpswp_softc* device_get_softc (int ) ;

__attribute__((used)) static void
cpswp_miibus_statchg(device_t dev)
{
 struct cpswp_softc *sc;
 uint32_t mac_control, reg;

 sc = device_get_softc(dev);
 CPSW_DEBUGF(sc->swsc, (""));

 reg = CPSW_SL_MACCONTROL(sc->unit);
 mac_control = cpsw_read_4(sc->swsc, reg);
 mac_control &= ~(CPSW_SL_MACTL_GIG | CPSW_SL_MACTL_IFCTL_A |
     CPSW_SL_MACTL_IFCTL_B | CPSW_SL_MACTL_FULLDUPLEX);

 switch(IFM_SUBTYPE(sc->mii->mii_media_active)) {
 case 130:
 case 131:
 case 132:
 case 129:
  mac_control |= CPSW_SL_MACTL_GIG;
  break;

 case 128:
  mac_control |= CPSW_SL_MACTL_IFCTL_A;
  break;
 }
 if (sc->mii->mii_media_active & IFM_FDX)
  mac_control |= CPSW_SL_MACTL_FULLDUPLEX;

 cpsw_write_4(sc->swsc, reg, mac_control);
}
