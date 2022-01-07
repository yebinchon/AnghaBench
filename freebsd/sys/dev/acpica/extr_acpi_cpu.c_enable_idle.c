
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_cpu_softc {int cpu_disable_idle; } ;


 int FALSE ;

__attribute__((used)) static void
enable_idle(struct acpi_cpu_softc *sc)
{

    sc->cpu_disable_idle = FALSE;
}
