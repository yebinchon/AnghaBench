
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;


 int * AcpiGbl_PtypDecode ;
 int AcpiOsPrintf (char*,int,...) ;

__attribute__((used)) static void
AcpiDmPinConfig(
    UINT8 PinConfigType,
    UINT32 PinConfigValue)
{
    if (PinConfigType <= 13)
    {
        AcpiOsPrintf ("0x%2.2X /* %s */, ", PinConfigType,
            AcpiGbl_PtypDecode[PinConfigType]);
    }
    else
    {
        AcpiOsPrintf ("0x%2.2X, /* Vendor Defined */ ", PinConfigType);
    }



    AcpiOsPrintf ("0x%4.4X,\n", PinConfigValue);
}
