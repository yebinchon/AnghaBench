
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hp_softc {int was_wlan_on_air; int was_bluetooth_on_air; int was_wwan_on_air; int wmi_dev; scalar_t__ verbose; scalar_t__ wwan_enable_if_radio_on; scalar_t__ wwan_disable_if_radio_off; scalar_t__ bluetooth_enable_if_radio_on; scalar_t__ bluetooth_disable_if_radio_off; scalar_t__ wlan_enable_if_radio_on; scalar_t__ wlan_disable_if_radio_off; } ;


 int ACPI_HP_WMI_WIRELESS_COMMAND ;
 int ACPI_ROOT_OBJECT ;
 int HP_MASK_BLUETOOTH_ENABLED ;
 int HP_MASK_BLUETOOTH_ON_AIR ;
 int HP_MASK_BLUETOOTH_RADIO ;
 int HP_MASK_WLAN_ENABLED ;
 int HP_MASK_WLAN_ON_AIR ;
 int HP_MASK_WLAN_RADIO ;
 int HP_MASK_WWAN_ENABLED ;
 int HP_MASK_WWAN_ON_AIR ;
 int HP_MASK_WWAN_RADIO ;
 int acpi_UserNotify (char*,int ,int) ;
 int acpi_hp_exec_wmi_command (int ,int ,int,int,int*) ;
 int device_printf (int ,char*,int,...) ;

__attribute__((used)) static void
acpi_hp_evaluate_auto_on_off(struct acpi_hp_softc *sc)
{
 int res;
 int wireless;
 int new_wlan_status;
 int new_bluetooth_status;
 int new_wwan_status;

 res = acpi_hp_exec_wmi_command(sc->wmi_dev,
     ACPI_HP_WMI_WIRELESS_COMMAND, 0, 0, &wireless);
 if (res != 0) {
  device_printf(sc->wmi_dev, "Wireless command error %x\n", res);
  return;
 }
 new_wlan_status = -1;
 new_bluetooth_status = -1;
 new_wwan_status = -1;

 if (sc->verbose)
  device_printf(sc->wmi_dev, "Wireless status is %x\n", wireless);
 if (sc->wlan_disable_if_radio_off && !(wireless & HP_MASK_WLAN_RADIO)
     && (wireless & HP_MASK_WLAN_ENABLED)) {
  acpi_hp_exec_wmi_command(sc->wmi_dev,
      ACPI_HP_WMI_WIRELESS_COMMAND, 1, 0x100, ((void*)0));
  new_wlan_status = 0;
 }
 else if (sc->wlan_enable_if_radio_on && (wireless & HP_MASK_WLAN_RADIO)
  && !(wireless & HP_MASK_WLAN_ENABLED)) {
  acpi_hp_exec_wmi_command(sc->wmi_dev,
      ACPI_HP_WMI_WIRELESS_COMMAND, 1, 0x101, ((void*)0));
  new_wlan_status = 1;
 }
 if (sc->bluetooth_disable_if_radio_off &&
     !(wireless & HP_MASK_BLUETOOTH_RADIO) &&
     (wireless & HP_MASK_BLUETOOTH_ENABLED)) {
  acpi_hp_exec_wmi_command(sc->wmi_dev,
      ACPI_HP_WMI_WIRELESS_COMMAND, 1, 0x200, ((void*)0));
  new_bluetooth_status = 0;
 }
 else if (sc->bluetooth_enable_if_radio_on &&
  (wireless & HP_MASK_BLUETOOTH_RADIO) &&
  !(wireless & HP_MASK_BLUETOOTH_ENABLED)) {
  acpi_hp_exec_wmi_command(sc->wmi_dev,
      ACPI_HP_WMI_WIRELESS_COMMAND, 1, 0x202, ((void*)0));
  new_bluetooth_status = 1;
 }
 if (sc->wwan_disable_if_radio_off &&
     !(wireless & HP_MASK_WWAN_RADIO) &&
     (wireless & HP_MASK_WWAN_ENABLED)) {
  acpi_hp_exec_wmi_command(sc->wmi_dev,
  ACPI_HP_WMI_WIRELESS_COMMAND, 1, 0x400, ((void*)0));
  new_wwan_status = 0;
 }
 else if (sc->wwan_enable_if_radio_on &&
  (wireless & HP_MASK_WWAN_RADIO) &&
  !(wireless & HP_MASK_WWAN_ENABLED)) {
  acpi_hp_exec_wmi_command(sc->wmi_dev,
      ACPI_HP_WMI_WIRELESS_COMMAND, 1, 0x404, ((void*)0));
  new_wwan_status = 1;
 }

 if (new_wlan_status == -1) {
  new_wlan_status = (wireless & HP_MASK_WLAN_ON_AIR);
  if ((new_wlan_status?1:0) != sc->was_wlan_on_air) {
   sc->was_wlan_on_air = sc->was_wlan_on_air?0:1;
   if (sc->verbose)
    device_printf(sc->wmi_dev,
            "WLAN on air changed to %i "
            "(new_wlan_status is %i)\n",
            sc->was_wlan_on_air, new_wlan_status);
   acpi_UserNotify("HP", ACPI_ROOT_OBJECT,
       0xc0+sc->was_wlan_on_air);
  }
 }
 if (new_bluetooth_status == -1) {
  new_bluetooth_status = (wireless & HP_MASK_BLUETOOTH_ON_AIR);
  if ((new_bluetooth_status?1:0) != sc->was_bluetooth_on_air) {
   sc->was_bluetooth_on_air = sc->was_bluetooth_on_air?
       0:1;
   if (sc->verbose)
    device_printf(sc->wmi_dev,
        "BLUETOOTH on air changed"
        " to %i (new_bluetooth_status is %i)\n",
        sc->was_bluetooth_on_air,
        new_bluetooth_status);
   acpi_UserNotify("HP", ACPI_ROOT_OBJECT,
       0xd0+sc->was_bluetooth_on_air);
  }
 }
 if (new_wwan_status == -1) {
  new_wwan_status = (wireless & HP_MASK_WWAN_ON_AIR);
  if ((new_wwan_status?1:0) != sc->was_wwan_on_air) {
   sc->was_wwan_on_air = sc->was_wwan_on_air?0:1;
   if (sc->verbose)
    device_printf(sc->wmi_dev,
        "WWAN on air changed to %i"
            " (new_wwan_status is %i)\n",
        sc->was_wwan_on_air, new_wwan_status);
   acpi_UserNotify("HP", ACPI_ROOT_OBJECT,
       0xe0+sc->was_wwan_on_air);
  }
 }
}
