#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_10__ {scalar_t__ Length; int /*<<< orphan*/  Pointer; } ;
struct TYPE_9__ {int /*<<< orphan*/  Pathname; scalar_t__** Args; int /*<<< orphan*/ * Types; } ;
struct TYPE_8__ {size_t Count; int /*<<< orphan*/ * Pointer; } ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_1__ ACPI_OBJECT_LIST ;
typedef  int /*<<< orphan*/  ACPI_OBJECT ;
typedef  TYPE_2__ ACPI_DB_METHOD_INFO ;
typedef  TYPE_3__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEBUGGER_MAX_ARGS ; 
 scalar_t__ ACPI_DEBUG_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ AE_ABORT_METHOD ; 
 scalar_t__ AE_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AcpiDbgLevel ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*) ; 
 void* AcpiGbl_AbortMethod ; 
 void* AcpiGbl_CmSingleStep ; 
 int /*<<< orphan*/  AcpiGbl_DbBuffer ; 
 scalar_t__ AcpiGbl_DbOutputToFile ; 
 void* AcpiGbl_MethodExecuting ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  DbExecuteMethod ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static ACPI_STATUS
FUNC9 (
    ACPI_DB_METHOD_INFO     *Info,
    ACPI_BUFFER             *ReturnObj)
{
    ACPI_STATUS             Status;
    ACPI_OBJECT_LIST        ParamObjects;
    ACPI_OBJECT             Params[ACPI_DEBUGGER_MAX_ARGS + 1];
    UINT32                  i;


    FUNC3 (DbExecuteMethod);


    if (AcpiGbl_DbOutputToFile && !AcpiDbgLevel)
    {
        FUNC7 ("Warning: debug output is not enabled!\n");
    }

    ParamObjects.Count = 0;
    ParamObjects.Pointer = NULL;

    /* Pass through any command-line arguments */

    if (Info->Args && Info->Args[0])
    {
        /* Get arguments passed on the command line */

        for (i = 0; (Info->Args[i] && *(Info->Args[i])); i++)
        {
            /* Convert input string (token) to an actual ACPI_OBJECT */

            Status = FUNC4 (Info->Types[i],
                Info->Args[i], &Params[i]);
            if (FUNC2 (Status))
            {
                FUNC1 ((AE_INFO, Status,
                    "While parsing method arguments"));
                goto Cleanup;
            }
        }

        ParamObjects.Count = i;
        ParamObjects.Pointer = Params;
    }

    /* Prepare for a return object of arbitrary size */

    ReturnObj->Pointer = AcpiGbl_DbBuffer;
    ReturnObj->Length  = ACPI_DEBUG_BUFFER_SIZE;

    /* Do the actual method execution */

    AcpiGbl_MethodExecuting = TRUE;
    Status = FUNC6 (NULL, Info->Pathname,
        &ParamObjects, ReturnObj);

    AcpiGbl_CmSingleStep = FALSE;
    AcpiGbl_MethodExecuting = FALSE;

    if (FUNC2 (Status))
    {
        if ((Status == AE_ABORT_METHOD) || AcpiGbl_AbortMethod)
        {
            /* Clear the abort and fall back to the debugger prompt */

            FUNC1 ((AE_INFO, Status,
                "Aborting top-level method"));

            AcpiGbl_AbortMethod = FALSE;
            Status = AE_OK;
            goto Cleanup;
        }

        FUNC1 ((AE_INFO, Status,
            "while executing %s from AML Debugger", Info->Pathname));

        if (Status == AE_BUFFER_OVERFLOW)
        {
            FUNC0 ((AE_INFO,
                "Possible buffer overflow within AML Debugger "
                "buffer (size 0x%X needed 0x%X)",
                ACPI_DEBUG_BUFFER_SIZE, (UINT32) ReturnObj->Length));
        }
    }

Cleanup:
    FUNC5 (ParamObjects.Count, Params);
    FUNC8 (Status);
}