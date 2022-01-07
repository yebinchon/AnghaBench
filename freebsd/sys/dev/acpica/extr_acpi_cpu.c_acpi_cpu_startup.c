
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_cpu_softc {int cpu_handle; scalar_t__ cpu_non_c3; int cpu_cx_count; } ;


 int ACPI_DEVICE_NOTIFY ;
 int AcpiInstallNotifyHandler (int ,int ,int ,struct acpi_cpu_softc*) ;
 int CPU_QUIRK_NO_C3 ;
 int CTLFLAG_RW ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int acpi_cpu_devclass ;
 int acpi_cpu_generic_cx_probe (struct acpi_cpu_softc*) ;
 int acpi_cpu_global_cx_lowest_sysctl ;
 int acpi_cpu_idle ;
 int acpi_cpu_notify ;
 int acpi_cpu_quirks () ;
 int acpi_cpu_startup_cx (struct acpi_cpu_softc*) ;
 scalar_t__ cpu_cx_generic ;
 scalar_t__ cpu_cx_lowest_lim ;
 int * cpu_devices ;
 int cpu_idle_hook ;
 int cpu_ndevices ;
 int cpu_quirks ;
 int cpu_sysctl_ctx ;
 int cpu_sysctl_tree ;
 int devclass_get_devices (int ,int **,int*) ;
 struct acpi_cpu_softc* device_get_softc (int ) ;
 int enable_idle (struct acpi_cpu_softc*) ;
 int min (int ,scalar_t__) ;

__attribute__((used)) static void
acpi_cpu_startup(void *arg)
{
    struct acpi_cpu_softc *sc;
    int i;


    devclass_get_devices(acpi_cpu_devclass, &cpu_devices, &cpu_ndevices);





    acpi_cpu_quirks();

    if (cpu_cx_generic) {




 for (i = 0; i < cpu_ndevices; i++) {
     sc = device_get_softc(cpu_devices[i]);
     acpi_cpu_generic_cx_probe(sc);
 }
    } else {





 for (i = 0; i < cpu_ndevices; i++) {
     sc = device_get_softc(cpu_devices[i]);
     if (cpu_quirks & CPU_QUIRK_NO_C3) {
  sc->cpu_cx_count = min(sc->cpu_cx_count, sc->cpu_non_c3 + 1);
     }
     AcpiInstallNotifyHandler(sc->cpu_handle, ACPI_DEVICE_NOTIFY,
  acpi_cpu_notify, sc);
 }
    }


    for (i = 0; i < cpu_ndevices; i++) {
 sc = device_get_softc(cpu_devices[i]);
 acpi_cpu_startup_cx(sc);
    }


    SYSCTL_ADD_PROC(&cpu_sysctl_ctx, SYSCTL_CHILDREN(cpu_sysctl_tree),
 OID_AUTO, "cx_lowest", CTLTYPE_STRING | CTLFLAG_RW,
 ((void*)0), 0, acpi_cpu_global_cx_lowest_sysctl, "A",
 "Global lowest Cx sleep state to use");


    cpu_cx_lowest_lim = 0;
    for (i = 0; i < cpu_ndevices; i++) {
 sc = device_get_softc(cpu_devices[i]);
 enable_idle(sc);
    }

    cpu_idle_hook = acpi_cpu_idle;

}
