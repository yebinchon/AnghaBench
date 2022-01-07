
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {char* Description; } ;
typedef TYPE_1__ AH_DEVICE_ID ;


 int ACPI_EISAID_STRING_SIZE ;
 TYPE_1__* AcpiAhMatchHardwareId (char*) ;
 int AcpiExEisaIdToString (char*,int ) ;
 int AcpiOsPrintf (char*,char*) ;

void
AcpiDmDecompressEisaId (
    UINT32 EncodedId)
{
    char IdBuffer[ACPI_EISAID_STRING_SIZE];
    const AH_DEVICE_ID *Info;




    AcpiExEisaIdToString (IdBuffer, EncodedId);
    AcpiOsPrintf ("EisaId (\"%s\")", IdBuffer);



    Info = AcpiAhMatchHardwareId (IdBuffer);
    if (Info)
    {
        AcpiOsPrintf (" /* %s */", Info->Description);
    }
}
