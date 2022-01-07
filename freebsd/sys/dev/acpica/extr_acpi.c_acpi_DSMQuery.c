
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int UINT8 ;
struct TYPE_11__ {scalar_t__ Pointer; } ;
struct TYPE_9__ {int Value; } ;
struct TYPE_8__ {scalar_t__ Pointer; } ;
struct TYPE_10__ {int Type; TYPE_2__ Integer; TYPE_1__ Buffer; } ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_4__ ACPI_BUFFER ;


 int ACPI_BIOS_WARNING (int ) ;
 int ACPI_INFO (char*) ;
 int ACPI_SUCCESS (int ) ;


 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AcpiOsFree (TYPE_3__*) ;
 int KASSERT (TYPE_3__*,char*) ;
 int acpi_EvaluateDSM (int ,int*,int,int ,int *,TYPE_4__*) ;

UINT8
acpi_DSMQuery(ACPI_HANDLE h, uint8_t *uuid, int revision)
{
    ACPI_BUFFER buf;
    ACPI_OBJECT *obj;
    UINT8 ret = 0;

    if (!ACPI_SUCCESS(acpi_EvaluateDSM(h, uuid, revision, 0, ((void*)0), &buf))) {
 ACPI_INFO(("Failed to enumerate DSM functions\n"));
 return (0);
    }

    obj = (ACPI_OBJECT *)buf.Pointer;
    KASSERT(obj, ("Object not allowed to be NULL\n"));







    switch (obj->Type) {
    case 129:
 ret = *(uint8_t *)obj->Buffer.Pointer;
 break;
    case 128:
 ACPI_BIOS_WARNING((AE_INFO,
     "Possibly buggy BIOS with ACPI_TYPE_INTEGER for function enumeration\n"));
 ret = obj->Integer.Value & 0xFF;
 break;
    default:
 ACPI_WARNING((AE_INFO, "Unexpected return type %u\n", obj->Type));
    };

    AcpiOsFree(obj);
    return ret;
}
