
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_4__ {scalar_t__ Type; int Flags; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;


 int ACPI_EXCEPTION (int ) ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_ERROR_IF_FOUND ;
 int ACPI_NS_EXTERNAL ;
 int AE_ERROR ;
 int AE_INFO ;
 int AE_OK ;
 int ANOBJ_IS_EXTERNAL ;
 int AcpiNsLookup (int *,char*,scalar_t__,int ,int,int *,TYPE_1__**) ;

__attribute__((used)) static ACPI_STATUS
AcpiDmResolveExternal (
    char *Path,
    UINT8 Type,
    ACPI_NAMESPACE_NODE **Node)
{
    ACPI_STATUS Status;


    Status = AcpiNsLookup (((void*)0), Path, Type,
        ACPI_IMODE_LOAD_PASS1,
        ACPI_NS_ERROR_IF_FOUND | ACPI_NS_EXTERNAL | ACPI_NS_DONT_OPEN_SCOPE,
        ((void*)0), Node);

    if (!Node)
    {
        ACPI_EXCEPTION ((AE_INFO, Status,
            "while adding external to namespace [%s]", Path));
    }



    else if ((*Node)->Type == Type &&
        (*Node)->Flags & ANOBJ_IS_EXTERNAL)
    {
        return (AE_OK);
    }
    else
    {
        ACPI_EXCEPTION ((AE_INFO, AE_ERROR,
            "[%s] has conflicting declarations", Path));
    }

    return (AE_ERROR);
}
