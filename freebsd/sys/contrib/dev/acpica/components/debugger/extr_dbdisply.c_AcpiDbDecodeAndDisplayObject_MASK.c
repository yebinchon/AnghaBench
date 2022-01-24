#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
struct TYPE_3__ {int Length; char* Pointer; } ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;
typedef  void ACPI_OPERAND_OBJECT ;
typedef  void ACPI_NAMESPACE_NODE ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
#define  ACPI_DESC_TYPE_NAMED 130 
#define  ACPI_DESC_TYPE_OPERAND 129 
#define  ACPI_DESC_TYPE_PARSER 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_FULL_PATHNAME_NO_TRAILING ; 
 int const FUNC1 (void*) ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (char*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (void*,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int DB_BYTE_DISPLAY ; 
 int DB_DWORD_DISPLAY ; 
 int DB_QWORD_DISPLAY ; 
 int DB_WORD_DISPLAY ; 

void
FUNC13 (
    char                    *Target,
    char                    *OutputType)
{
    void                    *ObjPtr;
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_OPERAND_OBJECT     *ObjDesc;
    UINT32                  Display = DB_BYTE_DISPLAY;
    char                    Buffer[80];
    ACPI_BUFFER             RetBuf;
    ACPI_STATUS             Status;
    UINT32                  Size;


    if (!Target)
    {
        return;
    }

    /* Decode the output type */

    if (OutputType)
    {
        FUNC12 (OutputType);
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

    /* Differentiate between a number and a name */

    if ((Target[0] >= 0x30) && (Target[0] <= 0x39))
    {
        ObjPtr = FUNC3 (Target);
        if (!FUNC10 (ObjPtr, 16))
        {
            FUNC9 (
                "Address %p is invalid in this address space\n",
                ObjPtr);
            return;
        }

        /* Decode the object type */

        switch (FUNC1 (ObjPtr))
        {
        case ACPI_DESC_TYPE_NAMED:

            /* This is a namespace Node */

            if (!FUNC10 (ObjPtr, sizeof (ACPI_NAMESPACE_NODE)))
            {
                FUNC9 (
                    "Cannot read entire Named object at address %p\n",
                    ObjPtr);
                return;
            }

            Node = ObjPtr;
            goto DumpNode;

        case ACPI_DESC_TYPE_OPERAND:

            /* This is a ACPI OPERAND OBJECT */

            if (!FUNC10 (ObjPtr, sizeof (ACPI_OPERAND_OBJECT)))
            {
                FUNC9 (
                    "Cannot read entire ACPI object at address %p\n",
                    ObjPtr);
                return;
            }

            FUNC11 (ObjPtr, sizeof (ACPI_OPERAND_OBJECT),
                Display, ACPI_UINT32_MAX);
            FUNC6 (ObjPtr, 1);
            break;

        case ACPI_DESC_TYPE_PARSER:

            /* This is a Parser Op object */

            if (!FUNC10 (ObjPtr, sizeof (ACPI_PARSE_OBJECT)))
            {
                FUNC9 (
                    "Cannot read entire Parser object at address %p\n",
                    ObjPtr);
                return;
            }

            FUNC11 (ObjPtr, sizeof (ACPI_PARSE_OBJECT),
                Display, ACPI_UINT32_MAX);
            FUNC2 ((ACPI_PARSE_OBJECT *) ObjPtr);
            break;

        default:

            /* Is not a recognizable object */

            FUNC9 (
                "Not a known ACPI internal object, descriptor type %2.2X\n",
                FUNC1 (ObjPtr));

            Size = 16;
            if (FUNC10 (ObjPtr, 64))
            {
                Size = 64;
            }

            /* Just dump some memory */

            FUNC11 (ObjPtr, Size, Display, ACPI_UINT32_MAX);
            break;
        }

        return;
    }

    /* The parameter is a name string that must be resolved to a Named obj */

    Node = FUNC4 (Target);
    if (!Node)
    {
        return;
    }


DumpNode:
    /* Now dump the NS node */

    Status = FUNC7 (Node, ACPI_FULL_PATHNAME_NO_TRAILING, &RetBuf);
    if (FUNC0 (Status))
    {
        FUNC9 ("Could not convert name to pathname\n");
    }

    else
    {
        FUNC9 ("Object %p: Namespace Node - Pathname: %s\n",
            Node, (char *) RetBuf.Pointer);
    }

    if (!FUNC10 (Node, sizeof (ACPI_NAMESPACE_NODE)))
    {
        FUNC9 ("Invalid Named object at address %p\n", Node);
        return;
    }

    FUNC11 ((void *) Node, sizeof (ACPI_NAMESPACE_NODE),
        Display, ACPI_UINT32_MAX);
    FUNC5 (Node, 1);

    ObjDesc = FUNC8 (Node);
    if (ObjDesc)
    {
        FUNC9 ("\nAttached Object %p:", ObjDesc);
        if (!FUNC10 (ObjDesc, sizeof (ACPI_OPERAND_OBJECT)))
        {
            FUNC9 ("Invalid internal ACPI Object at address %p\n",
                ObjDesc);
            return;
        }

        if (FUNC1 (
            ((ACPI_NAMESPACE_NODE *) ObjDesc)) == ACPI_DESC_TYPE_NAMED)
        {
            FUNC9 (" Namespace Node - ");
            Status = FUNC7 ((ACPI_NAMESPACE_NODE *) ObjDesc,
                ACPI_FULL_PATHNAME_NO_TRAILING, &RetBuf);
            if (FUNC0 (Status))
            {
                FUNC9 ("Could not convert name to pathname\n");
            }
            else
            {
                FUNC9 ("Pathname: %s",
                    (char *) RetBuf.Pointer);
            }

            FUNC9 ("\n");
            FUNC11 ((void *) ObjDesc,
                sizeof (ACPI_NAMESPACE_NODE), Display, ACPI_UINT32_MAX);
        }
        else
        {
            FUNC9 ("\n");
            FUNC11 ((void *) ObjDesc,
                sizeof (ACPI_OPERAND_OBJECT), Display, ACPI_UINT32_MAX);
        }

        FUNC6 (ObjDesc, 1);
    }
}