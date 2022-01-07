
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASL_FILE_MAP_OUTPUT ;
 int * AslGbl_GpioList ;
 int AslGbl_MapfileFlag ;
 int * AslGbl_SerialList ;
 int FlPrintFile (int ,char*) ;
 int MpEmitDeviceTree () ;
 int MpEmitGpioInfo () ;
 int MpEmitSerialInfo () ;

void
MpEmitMappingInfo (
    void)
{



    if (!AslGbl_MapfileFlag)
    {
        return;
    }

    if (!AslGbl_GpioList)
    {
        FlPrintFile (ASL_FILE_MAP_OUTPUT,
            "\nNo GPIO devices found\n");
    }

    if (!AslGbl_SerialList)
    {
        FlPrintFile (ASL_FILE_MAP_OUTPUT,
            "\nNo Serial devices found (I2C/SPI/UART)\n");
    }

    if (!AslGbl_GpioList && !AslGbl_SerialList)
    {
        return;
    }



    FlPrintFile (ASL_FILE_MAP_OUTPUT, "\nResource Descriptor Connectivity Map\n");
    FlPrintFile (ASL_FILE_MAP_OUTPUT, "------------------------------------\n");



    MpEmitGpioInfo ();
    MpEmitSerialInfo ();
    MpEmitDeviceTree ();



    AslGbl_SerialList = ((void*)0);
    AslGbl_GpioList = ((void*)0);
}
