
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_17__ {TYPE_8__* Handler; TYPE_8__** NotifyList; } ;
struct TYPE_16__ {TYPE_8__* Handler; TYPE_8__** NotifyList; } ;
struct TYPE_15__ {TYPE_8__** NotifyList; } ;
struct TYPE_14__ {TYPE_8__* Handler; } ;
struct TYPE_13__ {TYPE_8__* Handler; TYPE_8__** NotifyList; } ;
struct TYPE_12__ {size_t Count; TYPE_8__** Elements; } ;
struct TYPE_11__ {size_t Type; } ;
struct TYPE_18__ {TYPE_7__ ThermalZone; TYPE_6__ Processor; TYPE_5__ PowerResource; TYPE_4__ Region; TYPE_3__ Device; TYPE_2__ Package; TYPE_1__ Common; } ;
typedef TYPE_8__ ACPI_OPERAND_OBJECT ;




 size_t ACPI_TYPE_LOCAL_REGION_FIELD ;
 size_t ACPI_TYPE_NS_NODE_MAX ;





 int AcpiGbl_NumObjects ;
 int * AcpiGbl_ObjTypeCount ;
 int AcpiGbl_ObjTypeCountMisc ;
 int AcpiNsGetSecondaryObject (TYPE_8__*) ;

__attribute__((used)) static void
AcpiDbEnumerateObject (
    ACPI_OPERAND_OBJECT *ObjDesc)
{
    UINT32 i;


    if (!ObjDesc)
    {
        return;
    }



    AcpiGbl_NumObjects++;

    if (ObjDesc->Common.Type > ACPI_TYPE_NS_NODE_MAX)
    {
        AcpiGbl_ObjTypeCountMisc++;
    }
    else
    {
        AcpiGbl_ObjTypeCount [ObjDesc->Common.Type]++;
    }



    switch (ObjDesc->Common.Type)
    {
    case 132:

        for (i = 0; i < ObjDesc->Package.Count; i++)
        {
            AcpiDbEnumerateObject (ObjDesc->Package.Elements[i]);
        }
        break;

    case 133:

        AcpiDbEnumerateObject (ObjDesc->Device.NotifyList[0]);
        AcpiDbEnumerateObject (ObjDesc->Device.NotifyList[1]);
        AcpiDbEnumerateObject (ObjDesc->Device.Handler);
        break;

    case 134:

        if (AcpiNsGetSecondaryObject (ObjDesc))
        {
            AcpiGbl_ObjTypeCount [134]++;
        }
        break;

    case 129:

        AcpiGbl_ObjTypeCount [ACPI_TYPE_LOCAL_REGION_FIELD ]++;
        AcpiDbEnumerateObject (ObjDesc->Region.Handler);
        break;

    case 131:

        AcpiDbEnumerateObject (ObjDesc->PowerResource.NotifyList[0]);
        AcpiDbEnumerateObject (ObjDesc->PowerResource.NotifyList[1]);
        break;

    case 130:

        AcpiDbEnumerateObject (ObjDesc->Processor.NotifyList[0]);
        AcpiDbEnumerateObject (ObjDesc->Processor.NotifyList[1]);
        AcpiDbEnumerateObject (ObjDesc->Processor.Handler);
        break;

    case 128:

        AcpiDbEnumerateObject (ObjDesc->ThermalZone.NotifyList[0]);
        AcpiDbEnumerateObject (ObjDesc->ThermalZone.NotifyList[1]);
        AcpiDbEnumerateObject (ObjDesc->ThermalZone.Handler);
        break;

    default:

        break;
    }
}
