
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ tolower (int) ;

void
AcpiUtStrlwr (
    char *SrcString)
{
    char *String;


    ACPI_FUNCTION_ENTRY ();


    if (!SrcString)
    {
        return;
    }



    for (String = SrcString; *String; String++)
    {
        *String = (char) tolower ((int) *String);
    }
}
