
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct padctl_softc {int dummy; } ;


 int DELAY (int) ;
 int ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN ;
 int ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN_EARLY ;
 int ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN ;
 int RD4 (struct padctl_softc*,int ) ;
 int WR4 (struct padctl_softc*,int ,int ) ;
 int XUSB_PADCTL_ELPG_PROGRAM ;

__attribute__((used)) static int
phy_powerdown(struct padctl_softc *sc)
{
 uint32_t reg;

 reg = RD4(sc, XUSB_PADCTL_ELPG_PROGRAM);
 reg |= ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN_EARLY;
 WR4(sc, XUSB_PADCTL_ELPG_PROGRAM, reg);
 DELAY(100);

 reg = RD4(sc, XUSB_PADCTL_ELPG_PROGRAM);
 reg |= ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN;
 WR4(sc, XUSB_PADCTL_ELPG_PROGRAM, reg);
 DELAY(100);

 reg = RD4(sc, XUSB_PADCTL_ELPG_PROGRAM);
 reg |= ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN;
 WR4(sc, XUSB_PADCTL_ELPG_PROGRAM, reg);
 DELAY(100);

 return (0);
}
