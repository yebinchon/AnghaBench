
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_asus_wmi_softc {int wmi_dev; } ;
typedef int UINT32 ;


 int ASUS_WMI_METHODID_DEVS ;
 int acpi_asus_wmi_evaluate_method (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
acpi_wpi_asus_set_devstate(struct acpi_asus_wmi_softc *sc,
    UINT32 dev_id, UINT32 ctrl_param, UINT32 *retval)
{

 return (acpi_asus_wmi_evaluate_method(sc->wmi_dev,
     ASUS_WMI_METHODID_DEVS, dev_id, ctrl_param, retval));
}
