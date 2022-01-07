
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_STATE_S0 ;
 int ACPI_STATE_S5 ;
 int ACPI_STATE_UNKNOWN ;
 scalar_t__ strcasecmp (char const*,char*) ;
 char toupper (char const) ;

__attribute__((used)) static int
acpi_sname2sstate(const char *sname)
{
    int sstate;

    if (toupper(sname[0]) == 'S') {
 sstate = sname[1] - '0';
 if (sstate >= ACPI_STATE_S0 && sstate <= ACPI_STATE_S5 &&
     sname[2] == '\0')
     return (sstate);
    } else if (strcasecmp(sname, "NONE") == 0)
 return (ACPI_STATE_UNKNOWN);
    return (-1);
}
