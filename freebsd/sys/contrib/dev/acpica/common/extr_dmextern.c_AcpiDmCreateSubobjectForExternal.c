
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_10__ {TYPE_3__* Object; } ;
struct TYPE_8__ {TYPE_4__* Node; } ;
struct TYPE_7__ {int ParamCount; } ;
struct TYPE_9__ {TYPE_2__ Region; TYPE_1__ Method; } ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef TYPE_4__ ACPI_NAMESPACE_NODE ;




 TYPE_3__* AcpiUtCreateInternalObject (int const) ;

void
AcpiDmCreateSubobjectForExternal (
    UINT8 Type,
    ACPI_NAMESPACE_NODE **Node,
    UINT32 ParamCount)
{
    ACPI_OPERAND_OBJECT *ObjDesc;


    switch (Type)
    {
    case 129:



        ObjDesc = AcpiUtCreateInternalObject (129);
        ObjDesc->Method.ParamCount = (UINT8) ParamCount;
        (*Node)->Object = ObjDesc;
        break;

    case 128:



        ObjDesc = AcpiUtCreateInternalObject (128);
        ObjDesc->Region.Node = *Node;
        (*Node)->Object = ObjDesc;
        break;

    default:

        break;
    }
}
