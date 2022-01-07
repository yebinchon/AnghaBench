
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Pointer; } ;
struct TYPE_5__ {int * Handle; } ;
struct TYPE_7__ {int Type; TYPE_2__ String; TYPE_1__ Reference; } ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef int * ACPI_HANDLE ;


 int ACPI_FAILURE (int ) ;



 int AcpiGetHandle (int *,int ,int **) ;

ACPI_HANDLE
acpi_GetReference(ACPI_HANDLE scope, ACPI_OBJECT *obj)
{
    ACPI_HANDLE h;

    if (obj == ((void*)0))
 return (((void*)0));

    switch (obj->Type) {
    case 129:
    case 130:
 h = obj->Reference.Handle;
 break;
    case 128:






 if (ACPI_FAILURE(AcpiGetHandle(scope, obj->String.Pointer, &h)))
     h = ((void*)0);
 break;
    default:
 h = ((void*)0);
 break;
    }

    return (h);
}
