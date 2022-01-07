
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmDecodeAttribute (
    UINT8 Attribute)
{

    switch (Attribute)
    {
    case 132:

        AcpiOsPrintf ("AttribQuick");
        break;

    case 129:

        AcpiOsPrintf ("AttribSendReceive");
        break;

    case 135:

        AcpiOsPrintf ("AttribByte");
        break;

    case 128:

        AcpiOsPrintf ("AttribWord");
        break;

    case 137:

        AcpiOsPrintf ("AttribBlock");
        break;

    case 134:

        AcpiOsPrintf ("AttribBytes");
        break;

    case 133:

        AcpiOsPrintf ("AttribProcessCall");
        break;

    case 136:

        AcpiOsPrintf ("AttribBlockProcessCall");
        break;

    case 131:

        AcpiOsPrintf ("AttribRawBytes");
        break;

    case 130:

        AcpiOsPrintf ("AttribRawProcessBytes");
        break;

    default:



        AcpiOsPrintf ("0x%2.2X", Attribute);
        break;
    }
}
