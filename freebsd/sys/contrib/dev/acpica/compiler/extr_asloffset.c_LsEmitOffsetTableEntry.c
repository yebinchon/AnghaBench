
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_3__ {scalar_t__ Pointer; int Length; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_LOCAL_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FREE (scalar_t__) ;
 int AcpiNsHandleToPathname (int *,TYPE_1__*,int ) ;
 int AslGbl_MsgBuffer ;
 int FALSE ;
 int FlPrintFile (int ,char*,int ,int ,int ,int ,int ,int ,char*) ;
 int strcat (int ,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
LsEmitOffsetTableEntry (
    UINT32 FileId,
    ACPI_NAMESPACE_NODE *Node,
    UINT32 NamepathOffset,
    UINT32 Offset,
    char *OpName,
    UINT64 Value,
    UINT8 AmlOpcode,
    UINT16 ParentOpcode)
{
    ACPI_BUFFER TargetPath;
    ACPI_STATUS Status;




    TargetPath.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    Status = AcpiNsHandleToPathname (Node, &TargetPath, FALSE);
    if (ACPI_FAILURE (Status))
    {
        return;
    }



    strcpy (AslGbl_MsgBuffer, "\"");
    strcat (AslGbl_MsgBuffer, &((char *) TargetPath.Pointer)[1]);
    strcat (AslGbl_MsgBuffer, "\",");
    ACPI_FREE (TargetPath.Pointer);





    FlPrintFile (FileId,
        "    {%-29s 0x%4.4X, 0x%8.8X, 0x%2.2X, 0x%8.8X, 0x%8.8X%8.8X}, /* %s */\n",
        AslGbl_MsgBuffer, ParentOpcode, NamepathOffset, AmlOpcode,
        Offset, ACPI_FORMAT_UINT64 (Value), OpName);
}
