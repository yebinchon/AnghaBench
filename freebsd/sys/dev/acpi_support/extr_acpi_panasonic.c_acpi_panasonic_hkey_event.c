
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acpi_panasonic_softc {int dev; } ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_7__ {int * Pointer; int Length; } ;
struct TYPE_5__ {int Value; } ;
struct TYPE_6__ {scalar_t__ Type; TYPE_1__ Integer; } ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_SERIAL_ASSERT (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int AcpiEvaluateObject (int ,char*,int *,TYPE_3__*) ;
 int AcpiOsFree (int *) ;
 int ENXIO ;
 int device_printf (int ,char*,...) ;
 int panasonic ;

__attribute__((used)) static int
acpi_panasonic_hkey_event(struct acpi_panasonic_softc *sc, ACPI_HANDLE h,
    UINT32 *arg)
{
 ACPI_BUFFER buf;
 ACPI_OBJECT *res;
 UINT64 val;
 int status;

 ACPI_SERIAL_ASSERT(panasonic);
 status = ENXIO;

 buf.Length = ACPI_ALLOCATE_BUFFER;
 buf.Pointer = ((void*)0);
 AcpiEvaluateObject(h, "HINF", ((void*)0), &buf);
 res = (ACPI_OBJECT *)buf.Pointer;
 if (res->Type != ACPI_TYPE_INTEGER) {
  device_printf(sc->dev, "HINF returned non-integer\n");
  goto end;
 }
 val = res->Integer.Value;





 if ((val & 0x7f) > 0 && (val & 0x7f) < 11) {
  *arg = val;
  status = 0;
 }
end:
 if (buf.Pointer)
  AcpiOsFree(buf.Pointer);

 return (status);
}
