
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oeminfo; int type; int serial; int model; int gra2; int gra1; int lcap; int wcap; int dvol; int btech; int lfcap; int dcap; int units; } ;
struct acpi_cmbat_softc {TYPE_1__ bif; } ;
typedef void* device_t ;
struct TYPE_5__ {int * Pointer; int Length; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_2__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_CMBAT_MAXSTRLEN ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_PKG_VALID (int *,int) ;
 int ACPI_SERIAL_ASSERT (int ) ;
 int ACPI_VPRINT (void*,int ,char*,...) ;
 int AcpiEvaluateObject (int ,char*,int *,TYPE_2__*) ;
 int AcpiFormatException (int ) ;
 int AcpiOsFree (int *) ;
 scalar_t__ acpi_PkgInt32 (int *,int,int *) ;
 scalar_t__ acpi_PkgStr (int *,int,int ,int ) ;
 int acpi_device_get_parent_softc (void*) ;
 int acpi_get_handle (void*) ;
 int cmbat ;
 struct acpi_cmbat_softc* device_get_softc (void*) ;

__attribute__((used)) static void
acpi_cmbat_get_bif(void *arg)
{
    struct acpi_cmbat_softc *sc;
    ACPI_STATUS as;
    ACPI_OBJECT *res;
    ACPI_HANDLE h;
    ACPI_BUFFER bif_buffer;
    device_t dev;

    ACPI_SERIAL_ASSERT(cmbat);

    dev = arg;
    sc = device_get_softc(dev);
    h = acpi_get_handle(dev);
    bif_buffer.Pointer = ((void*)0);
    bif_buffer.Length = ACPI_ALLOCATE_BUFFER;

    as = AcpiEvaluateObject(h, "_BIF", ((void*)0), &bif_buffer);
    if (ACPI_FAILURE(as)) {
 ACPI_VPRINT(dev, acpi_device_get_parent_softc(dev),
      "error fetching current battery info -- %s\n",
      AcpiFormatException(as));
 goto end;
    }

    res = (ACPI_OBJECT *)bif_buffer.Pointer;
    if (!ACPI_PKG_VALID(res, 13)) {
 ACPI_VPRINT(dev, acpi_device_get_parent_softc(dev),
      "battery info corrupted\n");
 goto end;
    }

    if (acpi_PkgInt32(res, 0, &sc->bif.units) != 0)
 goto end;
    if (acpi_PkgInt32(res, 1, &sc->bif.dcap) != 0)
 goto end;
    if (acpi_PkgInt32(res, 2, &sc->bif.lfcap) != 0)
 goto end;
    if (acpi_PkgInt32(res, 3, &sc->bif.btech) != 0)
 goto end;
    if (acpi_PkgInt32(res, 4, &sc->bif.dvol) != 0)
 goto end;
    if (acpi_PkgInt32(res, 5, &sc->bif.wcap) != 0)
 goto end;
    if (acpi_PkgInt32(res, 6, &sc->bif.lcap) != 0)
 goto end;
    if (acpi_PkgInt32(res, 7, &sc->bif.gra1) != 0)
 goto end;
    if (acpi_PkgInt32(res, 8, &sc->bif.gra2) != 0)
 goto end;
    if (acpi_PkgStr(res, 9, sc->bif.model, ACPI_CMBAT_MAXSTRLEN) != 0)
 goto end;
    if (acpi_PkgStr(res, 10, sc->bif.serial, ACPI_CMBAT_MAXSTRLEN) != 0)
 goto end;
    if (acpi_PkgStr(res, 11, sc->bif.type, ACPI_CMBAT_MAXSTRLEN) != 0)
 goto end;
    if (acpi_PkgStr(res, 12, sc->bif.oeminfo, ACPI_CMBAT_MAXSTRLEN) != 0)
 goto end;

end:
    if (bif_buffer.Pointer != ((void*)0))
 AcpiOsFree(bif_buffer.Pointer);
}
