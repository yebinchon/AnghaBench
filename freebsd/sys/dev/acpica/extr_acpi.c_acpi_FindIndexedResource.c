
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_8__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_7__ {scalar_t__ Type; scalar_t__ Length; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_RESOURCE ;
typedef TYPE_2__ ACPI_BUFFER ;


 TYPE_1__* ACPI_NEXT_RESOURCE (TYPE_1__*) ;
 scalar_t__ ACPI_RESOURCE_TYPE_END_TAG ;
 int AE_BAD_PARAMETER ;
 int AE_NOT_FOUND ;
 int AE_OK ;

ACPI_STATUS
acpi_FindIndexedResource(ACPI_BUFFER *buf, int index, ACPI_RESOURCE **resp)
{
    ACPI_RESOURCE *rp;
    int i;

    rp = (ACPI_RESOURCE *)buf->Pointer;
    i = index;
    while (i-- > 0) {

 if (rp > (ACPI_RESOURCE *)((u_int8_t *)buf->Pointer + buf->Length))
     return (AE_BAD_PARAMETER);


 if (rp->Type == ACPI_RESOURCE_TYPE_END_TAG || rp->Length == 0)
     return (AE_NOT_FOUND);
 rp = ACPI_NEXT_RESOURCE(rp);
    }
    if (resp != ((void*)0))
 *resp = rp;

    return (AE_OK);
}
