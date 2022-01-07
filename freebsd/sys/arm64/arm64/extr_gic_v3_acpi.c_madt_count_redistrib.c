
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nregions; } ;
struct gic_v3_softc {TYPE_1__ gic_redists; } ;
struct TYPE_5__ {scalar_t__ Type; } ;
typedef TYPE_2__ ACPI_SUBTABLE_HEADER ;


 scalar_t__ ACPI_MADT_TYPE_GENERIC_REDISTRIBUTOR ;

__attribute__((used)) static void
madt_count_redistrib(ACPI_SUBTABLE_HEADER *entry, void *arg)
{
 struct gic_v3_softc *sc = arg;

 if (entry->Type == ACPI_MADT_TYPE_GENERIC_REDISTRIBUTOR)
  sc->gic_redists.nregions++;
}
