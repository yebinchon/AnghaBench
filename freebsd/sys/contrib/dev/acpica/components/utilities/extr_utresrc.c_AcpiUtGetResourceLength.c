
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT16 ;
typedef scalar_t__ ACPI_RS_LENGTH ;


 int ACPI_ADD_PTR (int ,void*,int) ;
 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_GET8 (void*) ;
 int ACPI_MOVE_16_TO_16 (scalar_t__*,int ) ;
 int ACPI_RESOURCE_NAME_LARGE ;
 int ACPI_RESOURCE_NAME_SMALL_LENGTH_MASK ;
 int UINT8 ;

UINT16
AcpiUtGetResourceLength (
    void *Aml)
{
    ACPI_RS_LENGTH ResourceLength;


    ACPI_FUNCTION_ENTRY ();






    if (ACPI_GET8 (Aml) & ACPI_RESOURCE_NAME_LARGE)
    {


        ACPI_MOVE_16_TO_16 (&ResourceLength, ACPI_ADD_PTR (UINT8, Aml, 1));

    }
    else
    {


        ResourceLength = (UINT16) (ACPI_GET8 (Aml) &
            ACPI_RESOURCE_NAME_SMALL_LENGTH_MASK);
    }

    return (ResourceLength);
}
