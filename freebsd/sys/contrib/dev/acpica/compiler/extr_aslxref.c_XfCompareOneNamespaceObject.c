
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_3__ {scalar_t__ Integer; } ;
struct TYPE_4__ {TYPE_1__ Name; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_NAMESPACE_NODE ;
typedef scalar_t__ ACPI_HANDLE ;


 int AE_CTRL_TRUE ;
 int AE_OK ;

__attribute__((used)) static ACPI_STATUS
XfCompareOneNamespaceObject (
    ACPI_HANDLE ObjHandle,
    UINT32 Level,
    void *Context,
    void **ReturnValue)
{
    ACPI_NAMESPACE_NODE *Node = (ACPI_NAMESPACE_NODE *) ObjHandle;




    if (*((UINT32 *) (Context)) == Node->Name.Integer)
    {


        return (AE_CTRL_TRUE);
    }

    return (AE_OK);
}
