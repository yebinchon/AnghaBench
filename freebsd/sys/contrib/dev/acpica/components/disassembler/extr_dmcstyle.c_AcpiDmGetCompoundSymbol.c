
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;
__attribute__((used)) static char *
AcpiDmGetCompoundSymbol (
   UINT16 AmlOpcode)
{
    char *Symbol;


    switch (AmlOpcode)
    {
    case 137:
        Symbol = " += ";
        break;

    case 128:
        Symbol = " -= ";
        break;

    case 131:
        Symbol = " *= ";
        break;

    case 133:
        Symbol = " /= ";
        break;

    case 132:
        Symbol = " %= ";
        break;

    case 130:
        Symbol = " <<= ";
        break;

    case 129:
        Symbol = " >>= ";
        break;

    case 136:
        Symbol = " &= ";
        break;

    case 135:
        Symbol = " |= ";
        break;

    case 134:
        Symbol = " ^= ";
        break;

    default:



        return (((void*)0));
    }

    return (Symbol);
}
