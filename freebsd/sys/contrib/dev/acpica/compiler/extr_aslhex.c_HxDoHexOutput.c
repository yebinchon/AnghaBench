
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AslGbl_HexOutputFlag ;



 int HxDoHexOutputAsl () ;
 int HxDoHexOutputAsm () ;
 int HxDoHexOutputC () ;

void
HxDoHexOutput (
    void)
{

    switch (AslGbl_HexOutputFlag)
    {
    case 128:

        HxDoHexOutputC ();
        break;

    case 129:

        HxDoHexOutputAsm ();
        break;

    case 130:

        HxDoHexOutputAsl ();
        break;

    default:



        break;
    }
}
