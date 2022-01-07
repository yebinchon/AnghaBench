
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_cpu_softc {int cpu_dev; int cpu_sysctl_ctx; int cpu_cx_supported; } ;


 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 int AcpiOsWritePort (int ,scalar_t__,int) ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,void*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (int *,int ,int ,char*,int,int ,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int acpi ;
 int acpi_cpu_cx_list (struct acpi_cpu_softc*) ;
 int acpi_cpu_cx_lowest_sysctl ;
 int acpi_cpu_method_sysctl ;
 int acpi_cpu_usage_counters_sysctl ;
 int acpi_cpu_usage_sysctl ;
 scalar_t__ cpu_cst_cnt ;
 int cpu_cx_generic ;
 int cpu_smi_cmd ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
acpi_cpu_startup_cx(struct acpi_cpu_softc *sc)
{
    acpi_cpu_cx_list(sc);

    SYSCTL_ADD_STRING(&sc->cpu_sysctl_ctx,
        SYSCTL_CHILDREN(device_get_sysctl_tree(sc->cpu_dev)),
        OID_AUTO, "cx_supported", CTLFLAG_RD,
        sc->cpu_cx_supported, 0,
        "Cx/microsecond values for supported Cx states");
    SYSCTL_ADD_PROC(&sc->cpu_sysctl_ctx,
      SYSCTL_CHILDREN(device_get_sysctl_tree(sc->cpu_dev)),
      OID_AUTO, "cx_lowest", CTLTYPE_STRING | CTLFLAG_RW,
      (void *)sc, 0, acpi_cpu_cx_lowest_sysctl, "A",
      "lowest Cx sleep state to use");
    SYSCTL_ADD_PROC(&sc->cpu_sysctl_ctx,
      SYSCTL_CHILDREN(device_get_sysctl_tree(sc->cpu_dev)),
      OID_AUTO, "cx_usage", CTLTYPE_STRING | CTLFLAG_RD,
      (void *)sc, 0, acpi_cpu_usage_sysctl, "A",
      "percent usage for each Cx state");
    SYSCTL_ADD_PROC(&sc->cpu_sysctl_ctx,
      SYSCTL_CHILDREN(device_get_sysctl_tree(sc->cpu_dev)),
      OID_AUTO, "cx_usage_counters", CTLTYPE_STRING | CTLFLAG_RD,
      (void *)sc, 0, acpi_cpu_usage_counters_sysctl, "A",
      "Cx sleep state counters");

    SYSCTL_ADD_PROC(&sc->cpu_sysctl_ctx,
      SYSCTL_CHILDREN(device_get_sysctl_tree(sc->cpu_dev)),
      OID_AUTO, "cx_method", CTLTYPE_STRING | CTLFLAG_RD,
      (void *)sc, 0, acpi_cpu_method_sysctl, "A",
      "Cx entrance methods");



    if (!cpu_cx_generic && cpu_cst_cnt != 0) {
 ACPI_LOCK(acpi);
 AcpiOsWritePort(cpu_smi_cmd, cpu_cst_cnt, 8);
 ACPI_UNLOCK(acpi);
    }
}
