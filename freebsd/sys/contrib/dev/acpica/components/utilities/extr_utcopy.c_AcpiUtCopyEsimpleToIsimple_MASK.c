#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_22__ {int /*<<< orphan*/  Object; int /*<<< orphan*/  Class; } ;
struct TYPE_20__ {int /*<<< orphan*/  Value; } ;
struct TYPE_19__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/  Length; void* Pointer; } ;
struct TYPE_16__ {int /*<<< orphan*/  Length; void* Pointer; } ;
struct TYPE_24__ {TYPE_7__ Reference; TYPE_5__ Integer; TYPE_4__ Buffer; TYPE_1__ String; } ;
struct TYPE_23__ {int /*<<< orphan*/  Handle; } ;
struct TYPE_21__ {int /*<<< orphan*/  Value; } ;
struct TYPE_18__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Pointer; } ;
struct TYPE_17__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Pointer; } ;
struct TYPE_15__ {int Type; TYPE_8__ Reference; TYPE_6__ Integer; TYPE_3__ Buffer; TYPE_2__ String; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_SIZE ;
typedef  TYPE_9__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_10__ ACPI_OBJECT ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_REFCLASS_REFOF ; 
#define  ACPI_TYPE_ANY 132 
#define  ACPI_TYPE_BUFFER 131 
#define  ACPI_TYPE_INTEGER 130 
#define  ACPI_TYPE_LOCAL_REFERENCE 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_SUPPORT ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 TYPE_9__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  UtCopyEsimpleToIsimple ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC8 (
    ACPI_OBJECT             *ExternalObject,
    ACPI_OPERAND_OBJECT     **RetInternalObject)
{
    ACPI_OPERAND_OBJECT     *InternalObject;


    FUNC2 (UtCopyEsimpleToIsimple);


    /*
     * Simple types supported are: String, Buffer, Integer
     */
    switch (ExternalObject->Type)
    {
    case ACPI_TYPE_STRING:
    case ACPI_TYPE_BUFFER:
    case ACPI_TYPE_INTEGER:
    case ACPI_TYPE_LOCAL_REFERENCE:

        InternalObject = FUNC3 (
            (UINT8) ExternalObject->Type);
        if (!InternalObject)
        {
            FUNC7 (AE_NO_MEMORY);
        }
        break;

    case ACPI_TYPE_ANY: /* This is the case for a NULL object */

        *RetInternalObject = NULL;
        FUNC7 (AE_OK);

    default:

        /* All other types are not supported */

        FUNC1 ((AE_INFO,
            "Unsupported object type, cannot convert to internal object: %s",
            FUNC4 (ExternalObject->Type)));

        FUNC7 (AE_SUPPORT);
    }


    /* Must COPY string and buffer contents */

    switch (ExternalObject->Type)
    {
    case ACPI_TYPE_STRING:

        InternalObject->String.Pointer =
            FUNC0 ((ACPI_SIZE)
                ExternalObject->String.Length + 1);

        if (!InternalObject->String.Pointer)
        {
            goto ErrorExit;
        }

        FUNC6 (InternalObject->String.Pointer,
            ExternalObject->String.Pointer,
            ExternalObject->String.Length);

        InternalObject->String.Length = ExternalObject->String.Length;
        break;

    case ACPI_TYPE_BUFFER:

        InternalObject->Buffer.Pointer =
            FUNC0 (ExternalObject->Buffer.Length);
        if (!InternalObject->Buffer.Pointer)
        {
            goto ErrorExit;
        }

        FUNC6 (InternalObject->Buffer.Pointer,
            ExternalObject->Buffer.Pointer,
            ExternalObject->Buffer.Length);

        InternalObject->Buffer.Length = ExternalObject->Buffer.Length;

        /* Mark buffer data valid */

        InternalObject->Buffer.Flags |= AOPOBJ_DATA_VALID;
        break;

    case ACPI_TYPE_INTEGER:

        InternalObject->Integer.Value = ExternalObject->Integer.Value;
        break;

    case ACPI_TYPE_LOCAL_REFERENCE:

        /* An incoming reference is defined to be a namespace node */

        InternalObject->Reference.Class = ACPI_REFCLASS_REFOF;
        InternalObject->Reference.Object = ExternalObject->Reference.Handle;
        break;

    default:

        /* Other types can't get here */

        break;
    }

    *RetInternalObject = InternalObject;
    FUNC7 (AE_OK);


ErrorExit:
    FUNC5 (InternalObject);
    FUNC7 (AE_NO_MEMORY);
}