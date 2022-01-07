
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; } ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int TRUE ;
 scalar_t__ acpi_battery_get_info_expire () ;
 int cmbat ;
 int getnanotime (struct timespec*) ;
 int timespecisset (struct timespec*) ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;

__attribute__((used)) static int
acpi_cmbat_info_expired(struct timespec *lastupdated)
{
    struct timespec curtime;

    ACPI_SERIAL_ASSERT(cmbat);

    if (lastupdated == ((void*)0))
 return (TRUE);
    if (!timespecisset(lastupdated))
 return (TRUE);

    getnanotime(&curtime);
    timespecsub(&curtime, lastupdated, &curtime);
    return (curtime.tv_sec < 0 ||
     curtime.tv_sec > acpi_battery_get_info_expire());
}
