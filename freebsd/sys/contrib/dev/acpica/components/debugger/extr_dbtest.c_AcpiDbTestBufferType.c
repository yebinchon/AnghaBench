
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_6__ {int Length; int* Pointer; } ;
struct TYPE_7__ {TYPE_1__ Buffer; int Type; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DEBUG_LENGTH_FORMAT ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (int*) ;
 int ACPI_MASK_BITS_ABOVE (int) ;
 int ACPI_ROUND_BITS_UP_TO_BYTES (int) ;
 int ACPI_TYPE_BUFFER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiDbReadFromObject (int *,int ,TYPE_2__**) ;
 int AcpiDbWriteToObject (int *,TYPE_2__*) ;
 int AcpiOsFree (TYPE_2__*) ;
 int AcpiOsPrintf (char*,...) ;
 int BUFFER_FILL_VALUE ;
 scalar_t__ memcmp (int*,int*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static ACPI_STATUS
AcpiDbTestBufferType (
    ACPI_NAMESPACE_NODE *Node,
    UINT32 BitLength)
{
    ACPI_OBJECT *Temp1 = ((void*)0);
    ACPI_OBJECT *Temp2 = ((void*)0);
    ACPI_OBJECT *Temp3 = ((void*)0);
    UINT8 *Buffer;
    ACPI_OBJECT WriteValue;
    ACPI_STATUS Status;
    UINT32 ByteLength;
    UINT32 i;
    UINT8 ExtraBits;


    ByteLength = ACPI_ROUND_BITS_UP_TO_BYTES (BitLength);
    if (ByteLength == 0)
    {
        AcpiOsPrintf (" Ignoring zero length buffer");
        return (AE_OK);
    }



    Buffer = ACPI_ALLOCATE_ZEROED (ByteLength);
    if (!Buffer)
    {
        return (AE_NO_MEMORY);
    }



    Status = AcpiDbReadFromObject (Node, ACPI_TYPE_BUFFER, &Temp1);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }



    AcpiOsPrintf (ACPI_DEBUG_LENGTH_FORMAT, BitLength, Temp1->Buffer.Length);
    for (i = 0; ((i < 8) && (i < ByteLength)); i++)
    {
        AcpiOsPrintf (" %2.2X", Temp1->Buffer.Pointer[i]);
    }
    AcpiOsPrintf ("...  ");
    memset (Buffer, BUFFER_FILL_VALUE, ByteLength);
    ExtraBits = BitLength % 8;
    if (ExtraBits)
    {
        Buffer [ByteLength - 1] = ACPI_MASK_BITS_ABOVE (ExtraBits);
    }

    WriteValue.Type = ACPI_TYPE_BUFFER;
    WriteValue.Buffer.Length = ByteLength;
    WriteValue.Buffer.Pointer = Buffer;

    Status = AcpiDbWriteToObject (Node, &WriteValue);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }



    Status = AcpiDbReadFromObject (Node, ACPI_TYPE_BUFFER, &Temp2);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }

    if (memcmp (Temp2->Buffer.Pointer, Buffer, ByteLength))
    {
        AcpiOsPrintf (" MISMATCH 2: New buffer value");
    }



    WriteValue.Buffer.Length = ByteLength;
    WriteValue.Buffer.Pointer = Temp1->Buffer.Pointer;

    Status = AcpiDbWriteToObject (Node, &WriteValue);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }



    Status = AcpiDbReadFromObject (Node, ACPI_TYPE_BUFFER, &Temp3);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }

    if (memcmp (Temp1->Buffer.Pointer,
            Temp3->Buffer.Pointer, ByteLength))
    {
        AcpiOsPrintf (" MISMATCH 3: While restoring original buffer");
    }

Exit:
    ACPI_FREE (Buffer);
    if (Temp1) {AcpiOsFree (Temp1);}
    if (Temp2) {AcpiOsFree (Temp2);}
    if (Temp3) {AcpiOsFree (Temp3);}
    return (Status);
}
