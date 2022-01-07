
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;






 int AcpiOsPrintf (char*) ;

__attribute__((used)) static void
AcpiDmAddressPrefix (
    UINT8 Type)
{

    switch (Type)
    {
    case 131:

        AcpiOsPrintf ("Word");
        break;

    case 130:

        AcpiOsPrintf ("DWord");
        break;

    case 129:

        AcpiOsPrintf ("QWord");
        break;

    case 128:

        AcpiOsPrintf ("Extended");
        break;

    default:

        return;
    }
}
