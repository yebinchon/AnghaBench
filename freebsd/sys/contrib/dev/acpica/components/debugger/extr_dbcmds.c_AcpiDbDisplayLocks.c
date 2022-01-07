
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {scalar_t__ ThreadId; } ;


 size_t ACPI_MAX_MUTEX ;
 scalar_t__ ACPI_MUTEX_NOT_ACQUIRED ;
 TYPE_1__* AcpiGbl_MutexInfo ;
 int AcpiOsPrintf (char*,int ,char*) ;
 int AcpiUtGetMutexName (size_t) ;

void
AcpiDbDisplayLocks (
    void)
{
    UINT32 i;


    for (i = 0; i < ACPI_MAX_MUTEX; i++)
    {
        AcpiOsPrintf ("%26s : %s\n", AcpiUtGetMutexName (i),
            AcpiGbl_MutexInfo[i].ThreadId == ACPI_MUTEX_NOT_ACQUIRED
                ? "Locked" : "Unlocked");
    }
}
