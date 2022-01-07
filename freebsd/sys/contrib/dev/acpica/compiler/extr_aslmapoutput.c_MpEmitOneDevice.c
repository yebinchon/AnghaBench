
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {int Description; } ;
typedef TYPE_1__ AH_DEVICE_ID ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 int ACPI_CAST_PTR (int ,int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_NAMESPACE_NODE ;
 int AE_OK ;
 int ASL_FILE_MAP_OUTPUT ;
 TYPE_1__* AcpiAhMatchHardwareId (char*) ;
 char* AcpiNsGetExternalPathname (int ) ;
 int FlPrintFile (int ,char*,...) ;
 char* MpGetDdnValue (char*) ;
 char* MpGetHidValue (int ) ;

__attribute__((used)) static ACPI_STATUS
MpEmitOneDevice (
    ACPI_HANDLE ObjHandle,
    UINT32 NestingLevel,
    void *Context,
    void **ReturnValue)
{
    char *DevicePathname;
    char *DdnString;
    char *HidString;
    const AH_DEVICE_ID *HidInfo;




    DevicePathname = AcpiNsGetExternalPathname (
        ACPI_CAST_PTR (ACPI_NAMESPACE_NODE, ObjHandle));

    FlPrintFile (ASL_FILE_MAP_OUTPUT, "%-32s", DevicePathname);



    HidString = MpGetHidValue (
        ACPI_CAST_PTR (ACPI_NAMESPACE_NODE, ObjHandle));
    FlPrintFile (ASL_FILE_MAP_OUTPUT, "%8s", HidString);

    HidInfo = AcpiAhMatchHardwareId (HidString);
    if (HidInfo)
    {
        FlPrintFile (ASL_FILE_MAP_OUTPUT, "    // %s",
            HidInfo->Description);
    }
    else if ((DdnString = MpGetDdnValue (DevicePathname)))
    {
        FlPrintFile (ASL_FILE_MAP_OUTPUT, "    // %s (_DDN)", DdnString);
    }

    FlPrintFile (ASL_FILE_MAP_OUTPUT, "\n");
    ACPI_FREE (DevicePathname);
    return (AE_OK);
}
