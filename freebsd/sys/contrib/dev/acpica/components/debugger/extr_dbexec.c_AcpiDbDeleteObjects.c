
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_7__ {size_t Count; TYPE_3__* Elements; } ;
struct TYPE_6__ {TYPE_3__* Pointer; } ;
struct TYPE_8__ {int Type; TYPE_2__ Package; TYPE_1__ Buffer; } ;
typedef TYPE_3__ ACPI_OBJECT ;


 int ACPI_FREE (TYPE_3__*) ;



void
AcpiDbDeleteObjects (
    UINT32 Count,
    ACPI_OBJECT *Objects)
{
    UINT32 i;


    for (i = 0; i < Count; i++)
    {
        switch (Objects[i].Type)
        {
        case 129:

            ACPI_FREE (Objects[i].Buffer.Pointer);
            break;

        case 128:



            AcpiDbDeleteObjects (Objects[i].Package.Count,
                Objects[i].Package.Elements);



            ACPI_FREE (Objects[i].Package.Elements);
            break;

        default:

            break;
        }
    }
}
