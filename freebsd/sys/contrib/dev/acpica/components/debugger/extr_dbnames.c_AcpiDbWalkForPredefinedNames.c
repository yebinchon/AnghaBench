
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_10__ {int Ascii; } ;
struct TYPE_14__ {TYPE_1__ Name; } ;
struct TYPE_12__ {int Count1; int ObjectType1; int Type; } ;
struct TYPE_11__ {int ExpectedBtypes; int ArgumentList; } ;
struct TYPE_13__ {TYPE_3__ RetInfo; TYPE_2__ Info; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_PREDEFINED_INFO ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;
typedef scalar_t__ ACPI_HANDLE ;


 int ACPI_FREE (char*) ;
 int ACPI_RTYPE_PACKAGE ;
 int AE_OK ;
 int AcpiNsCheckAcpiCompliance (char*,TYPE_5__*,TYPE_4__ const*) ;
 char* AcpiNsGetNormalizedPathname (TYPE_5__*,int ) ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiUtGetExpectedReturnTypes (char*,int) ;
 TYPE_4__* AcpiUtMatchPredefinedMethod (int ) ;
 int METHOD_GET_ARG_COUNT (int ) ;
 int TRUE ;

__attribute__((used)) static ACPI_STATUS
AcpiDbWalkForPredefinedNames (
    ACPI_HANDLE ObjHandle,
    UINT32 NestingLevel,
    void *Context,
    void **ReturnValue)
{
    ACPI_NAMESPACE_NODE *Node = (ACPI_NAMESPACE_NODE *) ObjHandle;
    UINT32 *Count = (UINT32 *) Context;
    const ACPI_PREDEFINED_INFO *Predefined;
    const ACPI_PREDEFINED_INFO *Package = ((void*)0);
    char *Pathname;
    char StringBuffer[48];


    Predefined = AcpiUtMatchPredefinedMethod (Node->Name.Ascii);
    if (!Predefined)
    {
        return (AE_OK);
    }

    Pathname = AcpiNsGetNormalizedPathname (Node, TRUE);
    if (!Pathname)
    {
        return (AE_OK);
    }



    if (Predefined->Info.ExpectedBtypes & ACPI_RTYPE_PACKAGE)
    {
        Package = Predefined + 1;
    }

    AcpiUtGetExpectedReturnTypes (StringBuffer,
        Predefined->Info.ExpectedBtypes);

    AcpiOsPrintf ("%-32s Arguments %X, Return Types: %s", Pathname,
        METHOD_GET_ARG_COUNT (Predefined->Info.ArgumentList),
        StringBuffer);

    if (Package)
    {
        AcpiOsPrintf (" (PkgType %2.2X, ObjType %2.2X, Count %2.2X)",
            Package->RetInfo.Type, Package->RetInfo.ObjectType1,
            Package->RetInfo.Count1);
    }

    AcpiOsPrintf("\n");



    AcpiNsCheckAcpiCompliance (Pathname, Node, Predefined);

    ACPI_FREE (Pathname);
    (*Count)++;
    return (AE_OK);
}
