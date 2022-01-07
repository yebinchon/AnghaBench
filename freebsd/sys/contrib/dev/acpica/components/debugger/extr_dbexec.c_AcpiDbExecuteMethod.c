
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_10__ {scalar_t__ Length; int Pointer; } ;
struct TYPE_9__ {int Pathname; scalar_t__** Args; int * Types; } ;
struct TYPE_8__ {size_t Count; int * Pointer; } ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_1__ ACPI_OBJECT_LIST ;
typedef int ACPI_OBJECT ;
typedef TYPE_2__ ACPI_DB_METHOD_INFO ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_DEBUGGER_MAX_ARGS ;
 scalar_t__ ACPI_DEBUG_BUFFER_SIZE ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ AE_ABORT_METHOD ;
 scalar_t__ AE_BUFFER_OVERFLOW ;
 int AE_INFO ;
 scalar_t__ AE_OK ;
 scalar_t__ AcpiDbConvertToObject (int ,scalar_t__*,int *) ;
 int AcpiDbDeleteObjects (size_t,int *) ;
 int AcpiDbgLevel ;
 scalar_t__ AcpiEvaluateObject (int *,int ,TYPE_1__*,TYPE_3__*) ;
 void* AcpiGbl_AbortMethod ;
 void* AcpiGbl_CmSingleStep ;
 int AcpiGbl_DbBuffer ;
 scalar_t__ AcpiGbl_DbOutputToFile ;
 void* AcpiGbl_MethodExecuting ;
 int AcpiOsPrintf (char*) ;
 int DbExecuteMethod ;
 void* FALSE ;
 void* TRUE ;
 int return_ACPI_STATUS (scalar_t__) ;

__attribute__((used)) static ACPI_STATUS
AcpiDbExecuteMethod (
    ACPI_DB_METHOD_INFO *Info,
    ACPI_BUFFER *ReturnObj)
{
    ACPI_STATUS Status;
    ACPI_OBJECT_LIST ParamObjects;
    ACPI_OBJECT Params[ACPI_DEBUGGER_MAX_ARGS + 1];
    UINT32 i;


    ACPI_FUNCTION_TRACE (DbExecuteMethod);


    if (AcpiGbl_DbOutputToFile && !AcpiDbgLevel)
    {
        AcpiOsPrintf ("Warning: debug output is not enabled!\n");
    }

    ParamObjects.Count = 0;
    ParamObjects.Pointer = ((void*)0);



    if (Info->Args && Info->Args[0])
    {


        for (i = 0; (Info->Args[i] && *(Info->Args[i])); i++)
        {


            Status = AcpiDbConvertToObject (Info->Types[i],
                Info->Args[i], &Params[i]);
            if (ACPI_FAILURE (Status))
            {
                ACPI_EXCEPTION ((AE_INFO, Status,
                    "While parsing method arguments"));
                goto Cleanup;
            }
        }

        ParamObjects.Count = i;
        ParamObjects.Pointer = Params;
    }



    ReturnObj->Pointer = AcpiGbl_DbBuffer;
    ReturnObj->Length = ACPI_DEBUG_BUFFER_SIZE;



    AcpiGbl_MethodExecuting = TRUE;
    Status = AcpiEvaluateObject (((void*)0), Info->Pathname,
        &ParamObjects, ReturnObj);

    AcpiGbl_CmSingleStep = FALSE;
    AcpiGbl_MethodExecuting = FALSE;

    if (ACPI_FAILURE (Status))
    {
        if ((Status == AE_ABORT_METHOD) || AcpiGbl_AbortMethod)
        {


            ACPI_EXCEPTION ((AE_INFO, Status,
                "Aborting top-level method"));

            AcpiGbl_AbortMethod = FALSE;
            Status = AE_OK;
            goto Cleanup;
        }

        ACPI_EXCEPTION ((AE_INFO, Status,
            "while executing %s from AML Debugger", Info->Pathname));

        if (Status == AE_BUFFER_OVERFLOW)
        {
            ACPI_ERROR ((AE_INFO,
                "Possible buffer overflow within AML Debugger "
                "buffer (size 0x%X needed 0x%X)",
                ACPI_DEBUG_BUFFER_SIZE, (UINT32) ReturnObj->Length));
        }
    }

Cleanup:
    AcpiDbDeleteObjects (ParamObjects.Count, Params);
    return_ACPI_STATUS (Status);
}
