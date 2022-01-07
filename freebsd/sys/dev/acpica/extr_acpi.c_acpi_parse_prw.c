
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct acpi_prw_data {int power_res_count; TYPE_3__* power_res; int gpe_bit; int * gpe_handle; int lowest_wake; } ;
struct TYPE_12__ {int * Pointer; int Length; } ;
struct TYPE_10__ {int Count; TYPE_3__* Elements; } ;
struct TYPE_9__ {int Value; } ;
struct TYPE_11__ {int Type; TYPE_2__ Package; TYPE_1__ Integer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef int * ACPI_HANDLE ;
typedef TYPE_4__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_PKG_VALID (TYPE_3__*,int) ;
 int ACPI_PRW_MAX_POWERRES ;


 int AcpiEvaluateObject (int *,char*,int *,TYPE_4__*) ;
 int AcpiOsFree (int *) ;
 int EINVAL ;
 int ENOENT ;
 int * acpi_GetReference (int *,TYPE_3__*) ;
 scalar_t__ acpi_PkgInt32 (TYPE_3__*,int,int *) ;
 char* acpi_name (int *) ;
 int printf (char*,char*) ;

int
acpi_parse_prw(ACPI_HANDLE h, struct acpi_prw_data *prw)
{
    ACPI_STATUS status;
    ACPI_BUFFER prw_buffer;
    ACPI_OBJECT *res, *res2;
    int error, i, power_count;

    if (h == ((void*)0) || prw == ((void*)0))
 return (EINVAL);





    error = EINVAL;
    prw_buffer.Pointer = ((void*)0);
    prw_buffer.Length = ACPI_ALLOCATE_BUFFER;
    status = AcpiEvaluateObject(h, "_PRW", ((void*)0), &prw_buffer);
    if (ACPI_FAILURE(status))
 return (ENOENT);
    res = (ACPI_OBJECT *)prw_buffer.Pointer;
    if (res == ((void*)0))
 return (ENOENT);
    if (!ACPI_PKG_VALID(res, 2))
 goto out;







    if (acpi_PkgInt32(res, 1, &prw->lowest_wake) != 0)
 goto out;




    switch (res->Package.Elements[0].Type) {
    case 129:






 prw->gpe_handle = ((void*)0);
 prw->gpe_bit = res->Package.Elements[0].Integer.Value;
 error = 0;
 break;
    case 128:
 res2 = &res->Package.Elements[0];
 if (!ACPI_PKG_VALID(res2, 2))
     goto out;
 prw->gpe_handle = acpi_GetReference(((void*)0), &res2->Package.Elements[0]);
 if (prw->gpe_handle == ((void*)0))
     goto out;
 if (acpi_PkgInt32(res2, 1, &prw->gpe_bit) != 0)
     goto out;
 error = 0;
 break;
    default:
 goto out;
    }


    power_count = res->Package.Count - 2;
    if (power_count > ACPI_PRW_MAX_POWERRES) {
 printf("ACPI device %s has too many power resources\n", acpi_name(h));
 power_count = 0;
    }
    prw->power_res_count = power_count;
    for (i = 0; i < power_count; i++)
 prw->power_res[i] = res->Package.Elements[i];

out:
    if (prw_buffer.Pointer != ((void*)0))
 AcpiOsFree(prw_buffer.Pointer);
    return (error);
}
