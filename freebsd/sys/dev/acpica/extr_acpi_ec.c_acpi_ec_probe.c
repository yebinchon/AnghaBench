
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct acpi_ec_params {int gpe_bit; scalar_t__ glk; int * gpe_handle; scalar_t__ uid; } ;
typedef int * device_t ;
typedef int desc ;
struct TYPE_11__ {int * Pointer; int Length; } ;
struct TYPE_9__ {int * Elements; } ;
struct TYPE_8__ {int Value; } ;
struct TYPE_10__ {int Type; TYPE_2__ Package; TYPE_1__ Integer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_4__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ID_PROBE (int ,int *,char**,int *) ;
 int ACPI_PKG_VALID (TYPE_3__*,int) ;
 scalar_t__ ACPI_TYPE_DEVICE ;


 int AcpiEvaluateObject (int ,char*,int *,TYPE_4__*) ;
 int AcpiFormatException (int ) ;
 int AcpiOsFree (int *) ;
 int ENXIO ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int acpi_GetInteger (int ,char*,scalar_t__*) ;
 int * acpi_GetReference (int *,int *) ;
 int acpi_PkgInt32 (TYPE_3__*,int,int*) ;
 scalar_t__ acpi_disabled (char*) ;
 int acpi_ec_devclass ;
 int acpi_get_handle (int *) ;
 struct acpi_ec_params* acpi_get_private (int *) ;
 scalar_t__ acpi_get_type (int *) ;
 int acpi_set_private (int *,struct acpi_ec_params*) ;
 int * devclass_get_device (int ,scalar_t__) ;
 int device_disable (int *) ;
 int device_get_parent (int *) ;
 scalar_t__ device_is_alive (int *) ;
 scalar_t__ device_is_devclass_fixed (int *) ;
 int device_printf (int *,char*,int) ;
 int device_set_desc_copy (int *,char*) ;
 int free (struct acpi_ec_params*,int ) ;
 struct acpi_ec_params* malloc (int,int ,int) ;
 int snprintf (char*,int,char*,int,char*,char*) ;

__attribute__((used)) static int
acpi_ec_probe(device_t dev)
{
    ACPI_BUFFER buf;
    ACPI_HANDLE h;
    ACPI_OBJECT *obj;
    ACPI_STATUS status;
    device_t peer;
    char desc[64];
    int ecdt;
    int ret;
    struct acpi_ec_params *params;
    static char *ec_ids[] = { "PNP0C09", ((void*)0) };

    ret = ENXIO;


    if (acpi_get_type(dev) != ACPI_TYPE_DEVICE || acpi_disabled("ec"))
 return (ret);

    if (device_is_devclass_fixed(dev)) {




        ecdt = 1;
        params = acpi_get_private(dev);
 if (params != ((void*)0))
     ret = 0;

 goto out;
    } else
 ecdt = 0;

    ret = ACPI_ID_PROBE(device_get_parent(dev), dev, ec_ids, ((void*)0));
    if (ret > 0)
 return (ret);

    params = malloc(sizeof(struct acpi_ec_params), M_TEMP, M_WAITOK | M_ZERO);

    buf.Pointer = ((void*)0);
    buf.Length = ACPI_ALLOCATE_BUFFER;
    h = acpi_get_handle(dev);





    status = acpi_GetInteger(h, "_UID", &params->uid);
    if (ACPI_FAILURE(status))
 params->uid = 0;
    peer = devclass_get_device(acpi_ec_devclass, params->uid);
    if (peer != ((void*)0) && device_is_alive(peer)) {
 device_disable(dev);
 ret = ENXIO;
 goto out;
    }

    status = acpi_GetInteger(h, "_GLK", &params->glk);
    if (ACPI_FAILURE(status))
 params->glk = 0;






    status = AcpiEvaluateObject(h, "_GPE", ((void*)0), &buf);
    if (ACPI_FAILURE(status)) {
 device_printf(dev, "can't evaluate _GPE - %s\n", AcpiFormatException(status));
 goto out;
    }

    obj = (ACPI_OBJECT *)buf.Pointer;
    if (obj == ((void*)0))
 goto out;

    switch (obj->Type) {
    case 129:
 params->gpe_handle = ((void*)0);
 params->gpe_bit = obj->Integer.Value;
 break;
    case 128:
 if (!ACPI_PKG_VALID(obj, 2))
     goto out;
 params->gpe_handle = acpi_GetReference(((void*)0), &obj->Package.Elements[0]);
 if (params->gpe_handle == ((void*)0) ||
     acpi_PkgInt32(obj, 1, &params->gpe_bit) != 0)
  goto out;
 break;
    default:
 device_printf(dev, "_GPE has invalid type %d\n", obj->Type);
 goto out;
    }


    acpi_set_private(dev, params);

    if (buf.Pointer)
 AcpiOsFree(buf.Pointer);
out:
    if (ret <= 0) {
 snprintf(desc, sizeof(desc), "Embedded Controller: GPE %#x%s%s",
   params->gpe_bit, (params->glk) ? ", GLK" : "",
   ecdt ? ", ECDT" : "");
 device_set_desc_copy(dev, desc);
    } else
 free(params, M_TEMP);

    return (ret);
}
