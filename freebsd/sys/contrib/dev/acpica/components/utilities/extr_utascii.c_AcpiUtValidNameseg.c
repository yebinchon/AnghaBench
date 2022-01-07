
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef int BOOLEAN ;


 size_t ACPI_NAMESEG_SIZE ;
 int AcpiUtValidNameChar (char,size_t) ;
 int FALSE ;
 int TRUE ;

BOOLEAN
AcpiUtValidNameseg (
    char *Name)
{
    UINT32 i;




    for (i = 0; i < ACPI_NAMESEG_SIZE; i++)
    {
        if (!AcpiUtValidNameChar (Name[i], i))
        {
            return (FALSE);
        }
    }

    return (TRUE);
}
