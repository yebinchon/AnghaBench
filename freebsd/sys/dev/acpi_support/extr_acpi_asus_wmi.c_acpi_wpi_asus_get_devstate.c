
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_asus_wmi_softc {int dsts_id; int wmi_dev; } ;
typedef int UINT32 ;


 int acpi_asus_wmi_evaluate_method (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
acpi_wpi_asus_get_devstate(struct acpi_asus_wmi_softc *sc,
    UINT32 dev_id, UINT32 *retval)
{

 return (acpi_asus_wmi_evaluate_method(sc->wmi_dev,
     sc->dsts_id, dev_id, 0, retval));
}
