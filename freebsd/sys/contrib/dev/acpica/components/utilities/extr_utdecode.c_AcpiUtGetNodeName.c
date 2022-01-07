
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* Ascii; } ;
struct TYPE_5__ {TYPE_1__ Name; } ;
typedef TYPE_2__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_2__*) ;
 void* ACPI_ROOT_OBJECT ;
 void* AcpiGbl_RootNode ;
 int AcpiUtRepairName (char const*) ;

const char *
AcpiUtGetNodeName (
    void *Object)
{
    ACPI_NAMESPACE_NODE *Node = (ACPI_NAMESPACE_NODE *) Object;




    if (!Object)
    {
        return ("NULL");
    }



    if ((Object == ACPI_ROOT_OBJECT) ||
        (Object == AcpiGbl_RootNode))
    {
        return ("\"\\\" ");
    }



    if (ACPI_GET_DESCRIPTOR_TYPE (Node) != ACPI_DESC_TYPE_NAMED)
    {
        return ("####");
    }





    AcpiUtRepairName (Node->Name.Ascii);



    return (Node->Name.Ascii);
}
