
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* Pointer; void* Length; } ;
struct TYPE_10__ {scalar_t__ Length; int Pointer; } ;
struct TYPE_11__ {TYPE_1__ Buffer; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_RSDESC_SIZE ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_3__ ACPI_BUFFER ;


 void* ACPI_ALLOCATE_LOCAL_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (TYPE_2__*) ;
 int AcpiDmCompareAmlResources (int ,int ,TYPE_2__*,int ) ;
 int AcpiEvaluateObject (int *,char*,int *,TYPE_3__*) ;
 int AcpiFormatException (int ) ;
 int AcpiGetCurrentResources (int *,TYPE_3__*) ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiRsCreateAmlResources (TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static ACPI_STATUS
AcpiDmTestResourceConversion (
    ACPI_NAMESPACE_NODE *Node,
    char *Name)
{
    ACPI_STATUS Status;
    ACPI_BUFFER ReturnBuffer;
    ACPI_BUFFER ResourceBuffer;
    ACPI_BUFFER NewAml;
    ACPI_OBJECT *OriginalAml;


    AcpiOsPrintf ("Resource Conversion Comparison:\n");

    NewAml.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    ReturnBuffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    ResourceBuffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;



    Status = AcpiEvaluateObject (Node, Name, ((void*)0), &ReturnBuffer);
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("Could not obtain %s: %s\n",
            Name, AcpiFormatException (Status));
        return (Status);
    }



    Status = AcpiGetCurrentResources (Node, &ResourceBuffer);
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("AcpiGetCurrentResources failed: %s\n",
            AcpiFormatException (Status));
        goto Exit1;
    }



    Status = AcpiRsCreateAmlResources (&ResourceBuffer, &NewAml);
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("AcpiRsCreateAmlResources failed: %s\n",
            AcpiFormatException (Status));
        goto Exit2;
    }



    OriginalAml = ReturnBuffer.Pointer;

    AcpiDmCompareAmlResources (OriginalAml->Buffer.Pointer,
        (ACPI_RSDESC_SIZE) OriginalAml->Buffer.Length,
        NewAml.Pointer, (ACPI_RSDESC_SIZE) NewAml.Length);



    ACPI_FREE (NewAml.Pointer);
Exit2:
    ACPI_FREE (ResourceBuffer.Pointer);
Exit1:
    ACPI_FREE (ReturnBuffer.Pointer);
    return (Status);
}
