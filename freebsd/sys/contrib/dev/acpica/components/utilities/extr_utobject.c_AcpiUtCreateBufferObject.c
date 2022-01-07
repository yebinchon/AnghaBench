
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_7__ {scalar_t__ Length; int * Pointer; int Flags; } ;
struct TYPE_8__ {TYPE_1__ Buffer; } ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int * ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 int ACPI_TYPE_BUFFER ;
 int AE_INFO ;
 int AOPOBJ_DATA_VALID ;
 TYPE_2__* AcpiUtCreateInternalObject (int ) ;
 int AcpiUtRemoveReference (TYPE_2__*) ;
 int UtCreateBufferObject ;
 int return_PTR (TYPE_2__*) ;

ACPI_OPERAND_OBJECT *
AcpiUtCreateBufferObject (
    ACPI_SIZE BufferSize)
{
    ACPI_OPERAND_OBJECT *BufferDesc;
    UINT8 *Buffer = ((void*)0);


    ACPI_FUNCTION_TRACE_U32 (UtCreateBufferObject, BufferSize);




    BufferDesc = AcpiUtCreateInternalObject (ACPI_TYPE_BUFFER);
    if (!BufferDesc)
    {
        return_PTR (((void*)0));
    }



    if (BufferSize > 0)
    {


        Buffer = ACPI_ALLOCATE_ZEROED (BufferSize);
        if (!Buffer)
        {
            ACPI_ERROR ((AE_INFO, "Could not allocate size %u",
                (UINT32) BufferSize));

            AcpiUtRemoveReference (BufferDesc);
            return_PTR (((void*)0));
        }
    }



    BufferDesc->Buffer.Flags |= AOPOBJ_DATA_VALID;
    BufferDesc->Buffer.Pointer = Buffer;
    BufferDesc->Buffer.Length = (UINT32) BufferSize;



    return_PTR (BufferDesc);
}
