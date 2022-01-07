
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct acpi_softc {scalar_t__ acpi_sleep_delay; } ;
struct TYPE_4__ {int (* tc_get_timecount ) (TYPE_1__*) ;} ;


 int inittodr (scalar_t__) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 scalar_t__ time_second ;
 TYPE_1__* timecounter ;

__attribute__((used)) static void
acpi_resync_clock(struct acpi_softc *sc)
{




    (void)timecounter->tc_get_timecount(timecounter);
    (void)timecounter->tc_get_timecount(timecounter);
    inittodr(time_second + sc->acpi_sleep_delay);
}
