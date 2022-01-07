
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;


 char ACPI_ASCII_ZERO ;
 int FALSE ;
 int TRUE ;

BOOLEAN
AcpiUtDetectOctalPrefix (
    char **String)
{

    if (**String == ACPI_ASCII_ZERO)
    {
        *String += 1;
        return (TRUE);
    }

    return (FALSE);
}
