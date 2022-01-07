
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_xhci_softc {int dummy; } ;


 int DELAY (int) ;
 int GCTL ;
 int GCTL_CORESOFTRESET ;
 int GCTL_DISSCRAMBLE ;
 int GCTL_DSBLCLKGTNG ;
 int GCTL_PRTCAPDIR (int ) ;
 int GCTL_PRTCAP_HOST ;
 int GCTL_PRTCAP_OTG ;
 int GCTL_SCALEDOWN_MASK ;
 int GCTL_SCALEDOWN_SHIFT ;
 int GCTL_U2RSTECN ;
 int GHWPARAMS1 ;
 scalar_t__ GHWPARAMS1_EN_PWROPT (int) ;
 scalar_t__ GHWPARAMS1_EN_PWROPT_CLK ;
 int GSNPSID ;
 int GSNPSID_MASK ;
 int GUSB2PHYCFG (int ) ;
 int GUSB2PHYCFG_PHYSOFTRST ;
 int GUSB3PIPECTL (int ) ;
 int GUSB3PIPECTL_PHYSOFTRST ;
 int READ4 (struct exynos_xhci_softc*,int ) ;
 int REVISION_MASK ;
 int WRITE4 (struct exynos_xhci_softc*,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static int
dwc3_init(struct exynos_xhci_softc *esc)
{
 int hwparams1;
 int rev;
 int reg;

 rev = READ4(esc, GSNPSID);
 if ((rev & GSNPSID_MASK) != 0x55330000) {
  printf("It is not DWC3 controller\n");
  return (-1);
 }


 WRITE4(esc, GCTL, GCTL_CORESOFTRESET);
 WRITE4(esc, GUSB3PIPECTL(0), GUSB3PIPECTL_PHYSOFTRST);
 WRITE4(esc, GUSB2PHYCFG(0), GUSB2PHYCFG_PHYSOFTRST);

 DELAY(100000);

 reg = READ4(esc, GUSB3PIPECTL(0));
 reg &= ~(GUSB3PIPECTL_PHYSOFTRST);
 WRITE4(esc, GUSB3PIPECTL(0), reg);

 reg = READ4(esc, GUSB2PHYCFG(0));
 reg &= ~(GUSB2PHYCFG_PHYSOFTRST);
 WRITE4(esc, GUSB2PHYCFG(0), reg);

 reg = READ4(esc, GCTL);
 reg &= ~GCTL_CORESOFTRESET;
 WRITE4(esc, GCTL, reg);

 hwparams1 = READ4(esc, GHWPARAMS1);

 reg = READ4(esc, GCTL);
 reg &= ~(GCTL_SCALEDOWN_MASK << GCTL_SCALEDOWN_SHIFT);
 reg &= ~(GCTL_DISSCRAMBLE);

 if (GHWPARAMS1_EN_PWROPT(hwparams1) == GHWPARAMS1_EN_PWROPT_CLK)

  reg &= ~(GCTL_DSBLCLKGTNG);

 if ((rev & REVISION_MASK) < 0x190a)
  reg |= (GCTL_U2RSTECN);
 WRITE4(esc, GCTL, reg);


 reg = READ4(esc, GCTL);
 reg &= ~(GCTL_PRTCAPDIR(GCTL_PRTCAP_OTG));
 reg |= GCTL_PRTCAPDIR(GCTL_PRTCAP_HOST);
 WRITE4(esc, GCTL, reg);

 return (0);
}
