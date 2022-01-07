
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_STATE_S0 ;
 int ACPI_STATE_S5 ;
 int ACPI_STATE_UNKNOWN ;

__attribute__((used)) static const char *
acpi_sstate2sname(int sstate)
{
    static const char *snames[] = { "S0", "S1", "S2", "S3", "S4", "S5" };

    if (sstate >= ACPI_STATE_S0 && sstate <= ACPI_STATE_S5)
 return (snames[sstate]);
    else if (sstate == ACPI_STATE_UNKNOWN)
 return ("NONE");
    return (((void*)0));
}
