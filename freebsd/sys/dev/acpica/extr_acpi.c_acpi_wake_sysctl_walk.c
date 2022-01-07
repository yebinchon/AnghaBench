
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int AcpiEvaluateObject (int ,char*,int *,int *) ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int M_TEMP ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,int ,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int acpi_get_handle (int ) ;
 int acpi_wake_set_sysctl ;
 int device_get_children (int ,int **,int*) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_is_attached (int ) ;
 int free (int *,int ) ;

__attribute__((used)) static int
acpi_wake_sysctl_walk(device_t dev)
{
    int error, i, numdevs;
    device_t *devlist;
    device_t child;
    ACPI_STATUS status;

    error = device_get_children(dev, &devlist, &numdevs);
    if (error != 0 || numdevs == 0) {
 if (numdevs == 0)
     free(devlist, M_TEMP);
 return (error);
    }
    for (i = 0; i < numdevs; i++) {
 child = devlist[i];
 acpi_wake_sysctl_walk(child);
 if (!device_is_attached(child))
     continue;
 status = AcpiEvaluateObject(acpi_get_handle(child), "_PRW", ((void*)0), ((void*)0));
 if (ACPI_SUCCESS(status)) {
     SYSCTL_ADD_PROC(device_get_sysctl_ctx(child),
  SYSCTL_CHILDREN(device_get_sysctl_tree(child)), OID_AUTO,
  "wake", CTLTYPE_INT | CTLFLAG_RW, child, 0,
  acpi_wake_set_sysctl, "I", "Device set to wake the system");
 }
    }
    free(devlist, M_TEMP);

    return (0);
}
