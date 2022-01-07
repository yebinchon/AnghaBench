
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_cpu_softc {int cpu_cx_lowest; int cpu_non_c3; int cpu_cx_stats; TYPE_1__* cpu_cx_states; scalar_t__ cpu_cx_count; int cpu_cx_lowest_lim; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int ACPI_SERIAL_ASSERT (int ) ;
 scalar_t__ ACPI_STATE_C3 ;
 int bzero (int ,int) ;
 int cpu ;
 int min (int ,scalar_t__) ;

__attribute__((used)) static int
acpi_cpu_set_cx_lowest(struct acpi_cpu_softc *sc)
{
    int i;

    ACPI_SERIAL_ASSERT(cpu);
    sc->cpu_cx_lowest = min(sc->cpu_cx_lowest_lim, sc->cpu_cx_count - 1);


    sc->cpu_non_c3 = 0;
    for (i = sc->cpu_cx_lowest; i >= 0; i--) {
 if (sc->cpu_cx_states[i].type < ACPI_STATE_C3) {
     sc->cpu_non_c3 = i;
     break;
 }
    }


    bzero(sc->cpu_cx_stats, sizeof(sc->cpu_cx_stats));
    return (0);
}
