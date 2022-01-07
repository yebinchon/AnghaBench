
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT32 ;
typedef int UINT16 ;
struct TYPE_3__ {scalar_t__* Parameters; } ;
typedef TYPE_1__ ACPI_EVALUATE_INFO ;


 int AcpiUtUpdateObjectReference (scalar_t__,int ) ;

__attribute__((used)) static void
AcpiPsUpdateParameterList (
    ACPI_EVALUATE_INFO *Info,
    UINT16 Action)
{
    UINT32 i;


    if (Info->Parameters)
    {


        for (i = 0; Info->Parameters[i]; i++)
        {


            (void) AcpiUtUpdateObjectReference (
                Info->Parameters[i], Action);
        }
    }
}
