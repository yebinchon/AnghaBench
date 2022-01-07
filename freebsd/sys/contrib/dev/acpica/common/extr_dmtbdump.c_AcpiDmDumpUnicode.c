
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT32 ;


 int AcpiDmDumpBuffer (void*,int,int,int,int *) ;
 int AcpiOsPrintf (char*,...) ;
 int isprint (scalar_t__) ;

void
AcpiDmDumpUnicode (
    void *Table,
    UINT32 BufferOffset,
    UINT32 ByteLength)
{
    UINT8 *Buffer;
    UINT32 Length;
    UINT32 i;


    Buffer = ((UINT8 *) Table) + BufferOffset;
    Length = ByteLength - 2;



    for (i = 0; i < Length; i += 2)
    {
        if (!isprint (Buffer[i]))
        {
            goto DumpRawBuffer;
        }
    }



    for (i = 1; i < Length; i += 2)
    {
        if (Buffer[i])
        {
            goto DumpRawBuffer;
        }
    }



    AcpiOsPrintf ("\"");
    for (i = 0; i < Length; i += 2)
    {
        AcpiOsPrintf ("%c", Buffer[i]);
    }

    AcpiOsPrintf ("\"\n");
    return;

DumpRawBuffer:
    AcpiDmDumpBuffer (Table, BufferOffset, ByteLength,
        BufferOffset, ((void*)0));
    AcpiOsPrintf ("\n");
}
