
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ibm_softc {int ec_dev; int light_val; int wlan_bt_flags; } ;
typedef int UINT64 ;
typedef int ACPI_STATUS ;


 int ACPI_EC_READ (int ,int ,int*,int) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int IBM_EC_BRIGHTNESS ;
 int IBM_EC_MASK_BRI ;
 int IBM_EC_MASK_MUTE ;
 int IBM_EC_MASK_VOL ;
 int IBM_EC_VOLUME ;
 int POWER_SLEEP_STATE_SUSPEND ;
 int acpi_ibm_bluetooth_set (struct acpi_ibm_softc*,int) ;
 int acpi_ibm_brightness_set (struct acpi_ibm_softc*,int) ;
 int acpi_ibm_mute_set (struct acpi_ibm_softc*,int) ;
 int acpi_ibm_thinklight_set (struct acpi_ibm_softc*,int) ;
 int acpi_ibm_volume_set (struct acpi_ibm_softc*,int) ;
 int ibm ;
 int power_pm_suspend (int ) ;

__attribute__((used)) static void
acpi_ibm_eventhandler(struct acpi_ibm_softc *sc, int arg)
{
 int val;
 UINT64 val_ec;
 ACPI_STATUS status;

 ACPI_SERIAL_BEGIN(ibm);
 switch (arg) {
 case 131:
  power_pm_suspend(POWER_SLEEP_STATE_SUSPEND);
  break;

 case 135:
  acpi_ibm_bluetooth_set(sc, (sc->wlan_bt_flags == 0));
  break;

 case 133:
 case 134:

  status = ACPI_EC_READ(sc->ec_dev, IBM_EC_BRIGHTNESS,
          &val_ec, 1);
  if (ACPI_FAILURE(status))
   return;

  val = val_ec & IBM_EC_MASK_BRI;
  val = (arg == 133) ? val + 1 : val - 1;
  acpi_ibm_brightness_set(sc, val);
  break;

 case 130:
  acpi_ibm_thinklight_set(sc, (sc->light_val == 0));
  break;

 case 128:
 case 129:

  status = ACPI_EC_READ(sc->ec_dev, IBM_EC_VOLUME, &val_ec, 1);
  if (ACPI_FAILURE(status))
   return;

  val = val_ec & IBM_EC_MASK_VOL;
  val = (arg == 128) ? val + 1 : val - 1;
  acpi_ibm_volume_set(sc, val);
  break;

 case 132:

  status = ACPI_EC_READ(sc->ec_dev, IBM_EC_VOLUME, &val_ec, 1);
  if (ACPI_FAILURE(status))
   return;

  val = ((val_ec & IBM_EC_MASK_MUTE) == IBM_EC_MASK_MUTE);
  acpi_ibm_mute_set(sc, (val == 0));
  break;

 default:
  break;
 }
 ACPI_SERIAL_END(ibm);
}
