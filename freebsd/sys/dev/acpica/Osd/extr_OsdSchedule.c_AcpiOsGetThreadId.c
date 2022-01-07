
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int td_tid; } ;
typedef int ACPI_THREAD_ID ;


 TYPE_1__* curthread ;

ACPI_THREAD_ID
AcpiOsGetThreadId(void)
{




    return (curthread->td_tid);
}
