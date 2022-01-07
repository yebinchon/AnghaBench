
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct acpi_cpu_softc {int dummy; } ;
typedef int device_t ;
struct TYPE_8__ {int * Pointer; int Length; } ;
struct TYPE_6__ {int ProcId; } ;
struct TYPE_7__ {scalar_t__ Type; TYPE_1__ Processor; } ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_ID_PROBE (int ,int ,char**,int *) ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 scalar_t__ ACPI_TYPE_PROCESSOR ;
 int AcpiEvaluateObject (int ,int *,int *,TYPE_3__*) ;
 scalar_t__ AcpiFormatException (int ) ;
 int AcpiOsFree (TYPE_2__*) ;

 int ENXIO ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int acpi_GetInteger (int ,char*,int*) ;
 scalar_t__ acpi_cpu_disabled ;
 scalar_t__ acpi_disabled (char*) ;
 int acpi_get_handle (int ) ;
 scalar_t__ acpi_get_type (int ) ;
 scalar_t__ acpi_pcpu_get_id (int ,int*,int*) ;
 int acpi_set_private (int ,void*) ;
 int bootverbose ;
 int ** cpu_softc ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 int device_quiet (int ) ;
 int device_quiet_children (int ) ;
 int device_set_desc (int ,char*) ;
 int ** malloc (int,int ,int) ;
 int mp_maxid ;

__attribute__((used)) static int
acpi_cpu_probe(device_t dev)
{
    static char *cpudev_ids[] = { 128, ((void*)0) };
    int acpi_id, cpu_id;
    ACPI_BUFFER buf;
    ACPI_HANDLE handle;
    ACPI_OBJECT *obj;
    ACPI_STATUS status;
    ACPI_OBJECT_TYPE type;

    if (acpi_disabled("cpu") || acpi_cpu_disabled)
 return (ENXIO);
    type = acpi_get_type(dev);
    if (type != ACPI_TYPE_PROCESSOR && type != ACPI_TYPE_DEVICE)
 return (ENXIO);
    if (type == ACPI_TYPE_DEVICE &&
 ACPI_ID_PROBE(device_get_parent(dev), dev, cpudev_ids, ((void*)0)) >= 0)
 return (ENXIO);

    handle = acpi_get_handle(dev);
    if (cpu_softc == ((void*)0))
 cpu_softc = malloc(sizeof(struct acpi_cpu_softc *) *
     (mp_maxid + 1), M_TEMP , M_WAITOK | M_ZERO);

    if (type == ACPI_TYPE_PROCESSOR) {

 buf.Pointer = ((void*)0);
 buf.Length = ACPI_ALLOCATE_BUFFER;
 status = AcpiEvaluateObject(handle, ((void*)0), ((void*)0), &buf);
 if (ACPI_FAILURE(status)) {
     device_printf(dev, "probe failed to get Processor obj - %s\n",
  AcpiFormatException(status));
     return (ENXIO);
 }
 obj = (ACPI_OBJECT *)buf.Pointer;
 if (obj->Type != ACPI_TYPE_PROCESSOR) {
     device_printf(dev, "Processor object has bad type %d\n",
  obj->Type);
     AcpiOsFree(obj);
     return (ENXIO);
 }






 acpi_id = obj->Processor.ProcId;
 AcpiOsFree(obj);
    } else {
 status = acpi_GetInteger(handle, "_UID", &acpi_id);
 if (ACPI_FAILURE(status)) {
     device_printf(dev, "Device object has bad value - %s\n",
  AcpiFormatException(status));
     return (ENXIO);
 }
    }
    if (acpi_pcpu_get_id(dev, &acpi_id, &cpu_id) != 0)
 return (ENXIO);





    if (cpu_softc[cpu_id] != ((void*)0))
 return (ENXIO);


    cpu_softc[cpu_id] = (void *)1;
    acpi_set_private(dev, (void*)(intptr_t)cpu_id);
    device_set_desc(dev, "ACPI CPU");

    if (!bootverbose && device_get_unit(dev) != 0) {
     device_quiet(dev);
     device_quiet_children(dev);
    }

    return (0);
}
