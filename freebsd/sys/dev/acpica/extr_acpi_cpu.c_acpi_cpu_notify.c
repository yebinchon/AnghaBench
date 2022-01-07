
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_cpu_softc {int cpu_handle; } ;
typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_NOTIFY_CX_STATES ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int acpi_UserNotify (char*,int ,int ) ;
 int acpi_cpu_cx_cst (struct acpi_cpu_softc*) ;
 int acpi_cpu_cx_list (struct acpi_cpu_softc*) ;
 int acpi_cpu_set_cx_lowest (struct acpi_cpu_softc*) ;
 int cpu ;
 int disable_idle (struct acpi_cpu_softc*) ;
 int enable_idle (struct acpi_cpu_softc*) ;

__attribute__((used)) static void
acpi_cpu_notify(ACPI_HANDLE h, UINT32 notify, void *context)
{
    struct acpi_cpu_softc *sc = (struct acpi_cpu_softc *)context;

    if (notify != ACPI_NOTIFY_CX_STATES)
 return;
    ACPI_SERIAL_BEGIN(cpu);
    disable_idle(sc);


    acpi_cpu_cx_cst(sc);
    acpi_cpu_cx_list(sc);
    acpi_cpu_set_cx_lowest(sc);

    enable_idle(sc);
    ACPI_SERIAL_END(cpu);

    acpi_UserNotify("PROCESSOR", sc->cpu_handle, notify);
}
