
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct aml8726_usb_phy_softc {size_t npwr_en; int res; TYPE_1__* pwr_en; } ;
typedef int device_t ;
struct TYPE_2__ {int pol; int pin; int dev; } ;


 size_t AML_USB_PHY_CFG_A_POR ;
 size_t AML_USB_PHY_CFG_B_POR ;
 int AML_USB_PHY_CFG_REG ;
 int CSR_BARRIER (struct aml8726_usb_phy_softc*,int ) ;
 size_t CSR_READ_4 (struct aml8726_usb_phy_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_usb_phy_softc*,int ,size_t) ;
 int GPIO_PIN_SET (int ,int ,int ) ;
 int M_DEVBUF ;
 int PIN_OFF_FLAG (int ) ;
 int aml8726_usb_phy_spec ;
 int bus_release_resources (int ,int ,int ) ;
 struct aml8726_usb_phy_softc* device_get_softc (int ) ;
 int free (TYPE_1__*,int ) ;

__attribute__((used)) static int
aml8726_usb_phy_detach(device_t dev)
{
 struct aml8726_usb_phy_softc *sc = device_get_softc(dev);
 uint32_t i;
 uint32_t value;





 value = CSR_READ_4(sc, AML_USB_PHY_CFG_REG);

 value |= (AML_USB_PHY_CFG_A_POR | AML_USB_PHY_CFG_B_POR);

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);

 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);


 i = sc->npwr_en;
 while (i-- != 0) {
  (void)GPIO_PIN_SET(sc->pwr_en[i].dev, sc->pwr_en[i].pin,
      PIN_OFF_FLAG(sc->pwr_en[i].pol));
 }
 free (sc->pwr_en, M_DEVBUF);
 sc->pwr_en = ((void*)0);

 bus_release_resources(dev, aml8726_usb_phy_spec, sc->res);

 return (0);
}
