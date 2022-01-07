
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_softc {int acpi_sysctl_tree; int acpi_sysctl_ctx; } ;
struct acpi_acad_softc {int status; } ;
typedef int device_t ;
typedef int ACPI_HANDLE ;


 int ACPIIO_ACAD_GET_STATUS ;
 int ACPI_ALL_NOTIFY ;
 int AcpiInstallNotifyHandler (int ,int ,int ,int ) ;
 int AcpiOsExecute (int ,int ,int ) ;
 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int OSL_NOTIFY_HANDLER ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,int*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int acpi_acad_init_acline ;
 int acpi_acad_ioctl ;
 int acpi_acad_notify_handler ;
 int acpi_acad_sysctl ;
 struct acpi_softc* acpi_device_get_parent_softc (int ) ;
 int acpi_get_handle (int ) ;
 int acpi_register_ioctl (int ,int ,int ) ;
 struct acpi_acad_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;

__attribute__((used)) static int
acpi_acad_attach(device_t dev)
{
    struct acpi_acad_softc *sc;
    struct acpi_softc *acpi_sc;
    ACPI_HANDLE handle;
    int error;

    sc = device_get_softc(dev);
    handle = acpi_get_handle(dev);

    error = acpi_register_ioctl(ACPIIO_ACAD_GET_STATUS, acpi_acad_ioctl, dev);
    if (error != 0)
 return (error);

    if (device_get_unit(dev) == 0) {
 acpi_sc = acpi_device_get_parent_softc(dev);
 SYSCTL_ADD_PROC(&acpi_sc->acpi_sysctl_ctx,
   SYSCTL_CHILDREN(acpi_sc->acpi_sysctl_tree),
   OID_AUTO, "acline", CTLTYPE_INT | CTLFLAG_RD,
   &sc->status, 0, acpi_acad_sysctl, "I", "");
    }


    sc->status = -1;





    AcpiInstallNotifyHandler(handle, ACPI_ALL_NOTIFY,
        acpi_acad_notify_handler, dev);
    AcpiOsExecute(OSL_NOTIFY_HANDLER, acpi_acad_init_acline, dev);

    return (0);
}
