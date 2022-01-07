
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_cpu_softc {int cpu_disable_idle; } ;



__attribute__((used)) static int
is_idle_disabled(struct acpi_cpu_softc *sc)
{

    return (sc->cpu_disable_idle);
}
