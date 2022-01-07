
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_typec_phy_softc {int phy_ctrl_id; int grf; } ;


 int GRF_USB3OTG_CON1 (int ) ;
 int GRF_USB3PHY_CON0 (int ) ;
 int SYSCON_READ_4 (int ,int ) ;
 int SYSCON_WRITE_4 (int ,int ,int) ;
 int USB3OTG_CON1_U3_DIS ;
 int USB3PHY_CON0_USB2_ONLY ;

__attribute__((used)) static void
rk_typec_phy_set_usb2_only(struct rk_typec_phy_softc *sc, bool usb2only)
{
 uint32_t reg;


 reg = SYSCON_READ_4(sc->grf, GRF_USB3PHY_CON0(sc->phy_ctrl_id));
 if (usb2only)
  reg |= USB3PHY_CON0_USB2_ONLY;
 else
  reg &= ~USB3PHY_CON0_USB2_ONLY;

 reg |= (USB3PHY_CON0_USB2_ONLY) << 16;
 SYSCON_WRITE_4(sc->grf, GRF_USB3PHY_CON0(sc->phy_ctrl_id), reg);


 reg = SYSCON_READ_4(sc->grf, GRF_USB3OTG_CON1(sc->phy_ctrl_id));
 if (usb2only)
  reg |= USB3OTG_CON1_U3_DIS;
 else
  reg &= ~USB3OTG_CON1_U3_DIS;

 reg |= (USB3OTG_CON1_U3_DIS) << 16;
 SYSCON_WRITE_4(sc->grf, GRF_USB3OTG_CON1(sc->phy_ctrl_id), reg);
}
