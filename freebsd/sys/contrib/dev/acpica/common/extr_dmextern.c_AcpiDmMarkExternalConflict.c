
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* InternalPath; struct TYPE_7__* Next; int Flags; } ;
struct TYPE_6__ {int Flags; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;
typedef TYPE_2__ ACPI_EXTERNAL_LIST ;


 int ACPI_EXT_CONFLICTING_DECLARATION ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ AML_ROOT_PREFIX ;
 int ANOBJ_IS_EXTERNAL ;
 int AcpiDmGetExternalAndInternalPath (TYPE_1__*,char**,char**) ;
 int AcpiDmRemoveRootPrefix (char**) ;
 TYPE_2__* AcpiGbl_ExternalList ;
 int DmMarkExternalConflict ;
 int return_VOID ;
 int strcmp (scalar_t__*,char*) ;

void
AcpiDmMarkExternalConflict (
    ACPI_NAMESPACE_NODE *Node)
{
    ACPI_EXTERNAL_LIST *ExternalList = AcpiGbl_ExternalList;
    char *ExternalPath;
    char *InternalPath;
    char *Temp;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (DmMarkExternalConflict);


    if (Node->Flags & ANOBJ_IS_EXTERNAL)
    {
        return_VOID;
    }



    Status = AcpiDmGetExternalAndInternalPath (Node,
        &ExternalPath, &InternalPath);
    if (ACPI_FAILURE (Status))
    {
        return_VOID;
    }



    Status = AcpiDmRemoveRootPrefix (&InternalPath);
    if (ACPI_FAILURE (Status))
    {
        ACPI_FREE (InternalPath);
        ACPI_FREE (ExternalPath);
        return_VOID;
    }

    while (ExternalList)
    {
        Temp = ExternalList->InternalPath;
        if ((*ExternalList->InternalPath == AML_ROOT_PREFIX) &&
            (ExternalList->InternalPath[1]))
        {
            Temp++;
        }

        if (!strcmp (ExternalList->InternalPath, InternalPath))
        {
            ExternalList->Flags |= ACPI_EXT_CONFLICTING_DECLARATION;
        }
        ExternalList = ExternalList->Next;
    }

    ACPI_FREE (InternalPath);
    ACPI_FREE (ExternalPath);

    return_VOID;
}
