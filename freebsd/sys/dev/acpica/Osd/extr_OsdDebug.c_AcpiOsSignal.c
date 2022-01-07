
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_2__ {int Type; int Code; int Argument; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_SIGNAL_FATAL_INFO ;




 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int KDB_WHY_ACPI ;
 int kdb_enter (int ,char*) ;
 int printf (char*,int,int,int) ;

ACPI_STATUS
AcpiOsSignal(UINT32 Function, void *Info)
{
    ACPI_SIGNAL_FATAL_INFO *fatal;

    switch (Function) {
    case 128:
 fatal = (ACPI_SIGNAL_FATAL_INFO *)Info;
 printf("ACPI fatal signal, type 0x%x code 0x%x argument 0x%x",
       fatal->Type, fatal->Code, fatal->Argument);



 break;

    case 129:



 break;

    default:
 return (AE_BAD_PARAMETER);
    }

    return (AE_OK);
}
