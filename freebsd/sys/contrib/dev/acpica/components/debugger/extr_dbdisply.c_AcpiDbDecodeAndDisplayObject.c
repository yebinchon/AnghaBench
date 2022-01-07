
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {int Length; char* Pointer; } ;
typedef int Buffer ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;
typedef void ACPI_OPERAND_OBJECT ;
typedef void ACPI_NAMESPACE_NODE ;
typedef TYPE_1__ ACPI_BUFFER ;





 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FULL_PATHNAME_NO_TRAILING ;
 int const ACPI_GET_DESCRIPTOR_TYPE (void*) ;
 int ACPI_UINT32_MAX ;
 int AcpiDbDumpParserDescriptor (int *) ;
 void* AcpiDbGetPointer (char*) ;
 void* AcpiDbLocalNsLookup (char*) ;
 int AcpiExDumpNamespaceNode (void*,int) ;
 int AcpiExDumpObjectDescriptor (void*,int) ;
 int AcpiGetName (void*,int ,TYPE_1__*) ;
 void* AcpiNsGetAttachedObject (void*) ;
 int AcpiOsPrintf (char*,...) ;
 scalar_t__ AcpiOsReadable (void*,int) ;
 int AcpiUtDebugDumpBuffer (void*,int,int,int ) ;
 int AcpiUtStrupr (char*) ;
 int DB_BYTE_DISPLAY ;
 int DB_DWORD_DISPLAY ;
 int DB_QWORD_DISPLAY ;
 int DB_WORD_DISPLAY ;

void
AcpiDbDecodeAndDisplayObject (
    char *Target,
    char *OutputType)
{
    void *ObjPtr;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_OPERAND_OBJECT *ObjDesc;
    UINT32 Display = DB_BYTE_DISPLAY;
    char Buffer[80];
    ACPI_BUFFER RetBuf;
    ACPI_STATUS Status;
    UINT32 Size;


    if (!Target)
    {
        return;
    }



    if (OutputType)
    {
        AcpiUtStrupr (OutputType);
        if (OutputType[0] == 'W')
        {
            Display = DB_WORD_DISPLAY;
        }
        else if (OutputType[0] == 'D')
        {
            Display = DB_DWORD_DISPLAY;
        }
        else if (OutputType[0] == 'Q')
        {
            Display = DB_QWORD_DISPLAY;
        }
    }

    RetBuf.Length = sizeof (Buffer);
    RetBuf.Pointer = Buffer;



    if ((Target[0] >= 0x30) && (Target[0] <= 0x39))
    {
        ObjPtr = AcpiDbGetPointer (Target);
        if (!AcpiOsReadable (ObjPtr, 16))
        {
            AcpiOsPrintf (
                "Address %p is invalid in this address space\n",
                ObjPtr);
            return;
        }



        switch (ACPI_GET_DESCRIPTOR_TYPE (ObjPtr))
        {
        case 130:



            if (!AcpiOsReadable (ObjPtr, sizeof (ACPI_NAMESPACE_NODE)))
            {
                AcpiOsPrintf (
                    "Cannot read entire Named object at address %p\n",
                    ObjPtr);
                return;
            }

            Node = ObjPtr;
            goto DumpNode;

        case 129:



            if (!AcpiOsReadable (ObjPtr, sizeof (ACPI_OPERAND_OBJECT)))
            {
                AcpiOsPrintf (
                    "Cannot read entire ACPI object at address %p\n",
                    ObjPtr);
                return;
            }

            AcpiUtDebugDumpBuffer (ObjPtr, sizeof (ACPI_OPERAND_OBJECT),
                Display, ACPI_UINT32_MAX);
            AcpiExDumpObjectDescriptor (ObjPtr, 1);
            break;

        case 128:



            if (!AcpiOsReadable (ObjPtr, sizeof (ACPI_PARSE_OBJECT)))
            {
                AcpiOsPrintf (
                    "Cannot read entire Parser object at address %p\n",
                    ObjPtr);
                return;
            }

            AcpiUtDebugDumpBuffer (ObjPtr, sizeof (ACPI_PARSE_OBJECT),
                Display, ACPI_UINT32_MAX);
            AcpiDbDumpParserDescriptor ((ACPI_PARSE_OBJECT *) ObjPtr);
            break;

        default:



            AcpiOsPrintf (
                "Not a known ACPI internal object, descriptor type %2.2X\n",
                ACPI_GET_DESCRIPTOR_TYPE (ObjPtr));

            Size = 16;
            if (AcpiOsReadable (ObjPtr, 64))
            {
                Size = 64;
            }



            AcpiUtDebugDumpBuffer (ObjPtr, Size, Display, ACPI_UINT32_MAX);
            break;
        }

        return;
    }



    Node = AcpiDbLocalNsLookup (Target);
    if (!Node)
    {
        return;
    }


DumpNode:


    Status = AcpiGetName (Node, ACPI_FULL_PATHNAME_NO_TRAILING, &RetBuf);
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("Could not convert name to pathname\n");
    }

    else
    {
        AcpiOsPrintf ("Object %p: Namespace Node - Pathname: %s\n",
            Node, (char *) RetBuf.Pointer);
    }

    if (!AcpiOsReadable (Node, sizeof (ACPI_NAMESPACE_NODE)))
    {
        AcpiOsPrintf ("Invalid Named object at address %p\n", Node);
        return;
    }

    AcpiUtDebugDumpBuffer ((void *) Node, sizeof (ACPI_NAMESPACE_NODE),
        Display, ACPI_UINT32_MAX);
    AcpiExDumpNamespaceNode (Node, 1);

    ObjDesc = AcpiNsGetAttachedObject (Node);
    if (ObjDesc)
    {
        AcpiOsPrintf ("\nAttached Object %p:", ObjDesc);
        if (!AcpiOsReadable (ObjDesc, sizeof (ACPI_OPERAND_OBJECT)))
        {
            AcpiOsPrintf ("Invalid internal ACPI Object at address %p\n",
                ObjDesc);
            return;
        }

        if (ACPI_GET_DESCRIPTOR_TYPE (
            ((ACPI_NAMESPACE_NODE *) ObjDesc)) == 130)
        {
            AcpiOsPrintf (" Namespace Node - ");
            Status = AcpiGetName ((ACPI_NAMESPACE_NODE *) ObjDesc,
                ACPI_FULL_PATHNAME_NO_TRAILING, &RetBuf);
            if (ACPI_FAILURE (Status))
            {
                AcpiOsPrintf ("Could not convert name to pathname\n");
            }
            else
            {
                AcpiOsPrintf ("Pathname: %s",
                    (char *) RetBuf.Pointer);
            }

            AcpiOsPrintf ("\n");
            AcpiUtDebugDumpBuffer ((void *) ObjDesc,
                sizeof (ACPI_NAMESPACE_NODE), Display, ACPI_UINT32_MAX);
        }
        else
        {
            AcpiOsPrintf ("\n");
            AcpiUtDebugDumpBuffer ((void *) ObjDesc,
                sizeof (ACPI_OPERAND_OBJECT), Display, ACPI_UINT32_MAX);
        }

        AcpiExDumpObjectDescriptor (ObjDesc, 1);
    }
}
