
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 int ASL_FILE_MAP_OUTPUT ;
 int AcpiNsWalkNamespace (int ,int ,int ,int ,int ,int *,int *,int *) ;
 int FALSE ;
 int FlPrintFile (int ,char*) ;
 int MpEmitOneDevice ;

__attribute__((used)) static void
MpEmitDeviceTree (
    void)
{

    FlPrintFile (ASL_FILE_MAP_OUTPUT, "\n\nACPI Device Tree\n");
    FlPrintFile (ASL_FILE_MAP_OUTPUT, "----------------\n\n");

    FlPrintFile (ASL_FILE_MAP_OUTPUT, "Device Pathname                   "
        "_HID      Description\n\n");



    (void) AcpiNsWalkNamespace (ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, FALSE, MpEmitOneDevice, ((void*)0), ((void*)0), ((void*)0));
}
