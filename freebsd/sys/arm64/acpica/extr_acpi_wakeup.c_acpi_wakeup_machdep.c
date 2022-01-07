
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_softc {int dummy; } ;


 int KASSERT (int,char*) ;

int
acpi_wakeup_machdep(struct acpi_softc *sc, int state, int sleep_result,
    int intr_enabled)
{


 KASSERT(sleep_result == -1,
     ("acpi_wakeup_machdep: Invalid sleep result"));

 return (sleep_result);
}
