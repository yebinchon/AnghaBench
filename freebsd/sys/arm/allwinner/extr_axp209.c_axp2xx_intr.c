
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct axp2xx_softc {int dev; } ;


 int AXP2XX_IRQ1_AC_CONN ;
 int AXP2XX_IRQ1_AC_DISCONN ;
 int AXP2XX_IRQ1_AC_OVERVOLT ;
 int AXP2XX_IRQ1_STATUS ;
 int AXP2XX_IRQ1_VBUS_CONN ;
 int AXP2XX_IRQ1_VBUS_DISCONN ;
 int AXP2XX_IRQ1_VBUS_LOW ;
 int AXP2XX_IRQ1_VBUS_OVERVOLT ;
 int AXP2XX_IRQ2_BATT_CHARGED ;
 int AXP2XX_IRQ2_BATT_CHARGING ;
 int AXP2XX_IRQ2_BATT_CONN ;
 int AXP2XX_IRQ2_BATT_DISCONN ;
 int AXP2XX_IRQ2_BATT_TEMP_LOW ;
 int AXP2XX_IRQ2_BATT_TEMP_OVER ;
 int AXP2XX_IRQ2_STATUS ;
 int AXP2XX_IRQ3_PEK_SHORT ;
 int AXP2XX_IRQ3_STATUS ;
 int AXP2XX_IRQ4_STATUS ;
 int AXP2XX_IRQ5_STATUS ;
 int AXP2XX_IRQ_ACK ;
 int RB_POWEROFF ;
 int axp2xx_read (int ,int ,int*,int) ;
 int axp2xx_write (int ,int ,int ) ;
 int devctl_notify (char*,char*,char*,int *) ;
 int shutdown_nice (int ) ;

__attribute__((used)) static void
axp2xx_intr(void *arg)
{
 struct axp2xx_softc *sc;
 uint8_t reg;

 sc = arg;

 axp2xx_read(sc->dev, AXP2XX_IRQ1_STATUS, &reg, 1);
 if (reg) {
  if (reg & AXP2XX_IRQ1_AC_OVERVOLT)
   devctl_notify("PMU", "AC", "overvoltage", ((void*)0));
  if (reg & AXP2XX_IRQ1_VBUS_OVERVOLT)
   devctl_notify("PMU", "USB", "overvoltage", ((void*)0));
  if (reg & AXP2XX_IRQ1_VBUS_LOW)
   devctl_notify("PMU", "USB", "undervoltage", ((void*)0));
  if (reg & AXP2XX_IRQ1_AC_CONN)
   devctl_notify("PMU", "AC", "plugged", ((void*)0));
  if (reg & AXP2XX_IRQ1_AC_DISCONN)
   devctl_notify("PMU", "AC", "unplugged", ((void*)0));
  if (reg & AXP2XX_IRQ1_VBUS_CONN)
   devctl_notify("PMU", "USB", "plugged", ((void*)0));
  if (reg & AXP2XX_IRQ1_VBUS_DISCONN)
   devctl_notify("PMU", "USB", "unplugged", ((void*)0));
  axp2xx_write(sc->dev, AXP2XX_IRQ1_STATUS, AXP2XX_IRQ_ACK);
 }

 axp2xx_read(sc->dev, AXP2XX_IRQ2_STATUS, &reg, 1);
 if (reg) {
  if (reg & AXP2XX_IRQ2_BATT_CHARGED)
   devctl_notify("PMU", "Battery", "charged", ((void*)0));
  if (reg & AXP2XX_IRQ2_BATT_CHARGING)
   devctl_notify("PMU", "Battery", "charging", ((void*)0));
  if (reg & AXP2XX_IRQ2_BATT_CONN)
   devctl_notify("PMU", "Battery", "connected", ((void*)0));
  if (reg & AXP2XX_IRQ2_BATT_DISCONN)
   devctl_notify("PMU", "Battery", "disconnected", ((void*)0));
  if (reg & AXP2XX_IRQ2_BATT_TEMP_LOW)
   devctl_notify("PMU", "Battery", "low temp", ((void*)0));
  if (reg & AXP2XX_IRQ2_BATT_TEMP_OVER)
   devctl_notify("PMU", "Battery", "high temp", ((void*)0));
  axp2xx_write(sc->dev, AXP2XX_IRQ2_STATUS, AXP2XX_IRQ_ACK);
 }

 axp2xx_read(sc->dev, AXP2XX_IRQ3_STATUS, &reg, 1);
 if (reg) {
  if (reg & AXP2XX_IRQ3_PEK_SHORT)
   shutdown_nice(RB_POWEROFF);
  axp2xx_write(sc->dev, AXP2XX_IRQ3_STATUS, AXP2XX_IRQ_ACK);
 }

 axp2xx_read(sc->dev, AXP2XX_IRQ4_STATUS, &reg, 1);
 if (reg) {
  axp2xx_write(sc->dev, AXP2XX_IRQ4_STATUS, AXP2XX_IRQ_ACK);
 }

 axp2xx_read(sc->dev, AXP2XX_IRQ5_STATUS, &reg, 1);
 if (reg) {
  axp2xx_write(sc->dev, AXP2XX_IRQ5_STATUS, AXP2XX_IRQ_ACK);
 }
}
