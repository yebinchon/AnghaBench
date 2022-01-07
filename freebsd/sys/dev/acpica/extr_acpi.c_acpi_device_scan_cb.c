
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device_scan_ctx {scalar_t__ parent; int arg; int (* user_fn ) (scalar_t__,int **,int ,int ) ;} ;
typedef int * device_t ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef scalar_t__ ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 scalar_t__ ACPI_TYPE_POWER ;
 scalar_t__ ACPI_TYPE_PROCESSOR ;
 scalar_t__ ACPI_TYPE_THERMAL ;
 int AE_OK ;
 int AcpiAttachData (scalar_t__,int ,int *) ;
 int AcpiDetachData (scalar_t__,int ) ;
 int AcpiGetType (scalar_t__,scalar_t__*) ;
 scalar_t__ acpi_avoid (scalar_t__) ;
 int acpi_fake_objhandler ;
 int * acpi_get_device (scalar_t__) ;
 int device_delete_child (int ,int *) ;
 int device_get_parent (int *) ;
 int stub1 (scalar_t__,int **,int ,int ) ;

__attribute__((used)) static ACPI_STATUS
acpi_device_scan_cb(ACPI_HANDLE h, UINT32 level, void *arg, void **retval)
{
    struct acpi_device_scan_ctx *ctx;
    device_t dev, old_dev;
    ACPI_STATUS status;
    ACPI_OBJECT_TYPE type;





    ctx = (struct acpi_device_scan_ctx *)arg;
    if (acpi_avoid(h) || h == ctx->parent)
 return (AE_OK);


    if (ACPI_FAILURE(AcpiGetType(h, &type)))
 return (AE_OK);
    if (type != ACPI_TYPE_DEVICE && type != ACPI_TYPE_PROCESSOR &&
 type != ACPI_TYPE_THERMAL && type != ACPI_TYPE_POWER)
 return (AE_OK);





    old_dev = acpi_get_device(h);
    dev = old_dev;
    status = ctx->user_fn(h, &dev, level, ctx->arg);
    if (ACPI_FAILURE(status) || old_dev == dev)
 return (status);


    if (old_dev != ((void*)0)) {
 device_delete_child(device_get_parent(old_dev), old_dev);
 AcpiDetachData(h, acpi_fake_objhandler);
    }


    if (dev != ((void*)0))
 AcpiAttachData(h, acpi_fake_objhandler, dev);

    return (AE_OK);
}
