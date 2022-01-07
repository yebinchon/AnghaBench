
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {scalar_t__ AmlSubtreeLength; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int AE_OK ;

ACPI_STATUS
LnInitLengthsWalk (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{

    Op->Asl.AmlSubtreeLength = 0;
    return (AE_OK);
}
