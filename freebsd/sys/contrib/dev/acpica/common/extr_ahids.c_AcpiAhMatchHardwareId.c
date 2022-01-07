
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Name; } ;
typedef TYPE_1__ AH_DEVICE_ID ;


 TYPE_1__* AslDeviceIds ;
 int strcmp (char*,scalar_t__) ;

const AH_DEVICE_ID *
AcpiAhMatchHardwareId (
    char *HardwareId)
{
    const AH_DEVICE_ID *Info;


    for (Info = AslDeviceIds; Info->Name; Info++)
    {
        if (!strcmp (HardwareId, Info->Name))
        {
            return (Info);
        }
    }

    return (((void*)0));
}
