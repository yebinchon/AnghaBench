
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Count; TYPE_2__* Elements; } ;
struct TYPE_7__ {scalar_t__ Type; TYPE_1__ Package; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT ;


 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;

ACPI_STATUS
acpi_ForeachPackageObject(ACPI_OBJECT *pkg,
 void (*func)(ACPI_OBJECT *comp, void *arg), void *arg)
{
    ACPI_OBJECT *comp;
    int i;

    if (pkg == ((void*)0) || pkg->Type != ACPI_TYPE_PACKAGE)
 return (AE_BAD_PARAMETER);


    i = 0;
    comp = pkg->Package.Elements;
    for (; i < pkg->Package.Count; i++, comp++)
 func(comp, arg);

    return (AE_OK);
}
