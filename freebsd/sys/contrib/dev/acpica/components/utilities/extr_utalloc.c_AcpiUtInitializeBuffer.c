
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Length; int Pointer; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_ALLOCATE (int) ;



 int AE_BAD_PARAMETER ;
 int AE_BUFFER_OVERFLOW ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiOsAllocate (int) ;
 int memset (int ,int ,int) ;

ACPI_STATUS
AcpiUtInitializeBuffer (
    ACPI_BUFFER *Buffer,
    ACPI_SIZE RequiredLength)
{
    ACPI_SIZE InputBufferLength;




    if (!Buffer || !RequiredLength)
    {
        return (AE_BAD_PARAMETER);
    }





    InputBufferLength = Buffer->Length;
    Buffer->Length = RequiredLength;





    switch (InputBufferLength)
    {
    case 128:



        return (AE_BUFFER_OVERFLOW);

    case 130:







        Buffer->Pointer = AcpiOsAllocate (RequiredLength);
        break;

    case 129:



        Buffer->Pointer = ACPI_ALLOCATE (RequiredLength);
        break;

    default:



        if (InputBufferLength < RequiredLength)
        {
            return (AE_BUFFER_OVERFLOW);
        }
        break;
    }



    if (!Buffer->Pointer)
    {
        return (AE_NO_MEMORY);
    }



    memset (Buffer->Pointer, 0, RequiredLength);
    return (AE_OK);
}
