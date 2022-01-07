
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct acpi_cx {int trans_lat; int res_rid; int type; int * p_lvlx; int res_type; } ;
struct acpi_cpu_softc {int cpu_prev_sleep; int cpu_p_blk_len; scalar_t__ cpu_cx_count; int cpu_dev; scalar_t__ cpu_p_blk; scalar_t__ cpu_non_c3; scalar_t__ cpu_non_c2; struct acpi_cx* cpu_cx_states; } ;
struct TYPE_5__ {int C2Latency; int C3Latency; } ;
struct TYPE_4__ {int BitWidth; scalar_t__ Address; int SpaceId; } ;
typedef TYPE_1__ ACPI_GENERIC_ADDRESS ;


 int ACPI_ADR_SPACE_SYSTEM_IO ;
 int ACPI_STATE_C1 ;
 int ACPI_STATE_C2 ;
 int ACPI_STATE_C3 ;
 TYPE_3__ AcpiGbl_FADT ;
 int CPU_QUIRK_NO_C3 ;
 int RF_SHAREABLE ;
 int acpi_bus_alloc_gas (int ,int *,int*,TYPE_1__*,int **,int ) ;
 int cpu_quirks ;

__attribute__((used)) static void
acpi_cpu_generic_cx_probe(struct acpi_cpu_softc *sc)
{
    ACPI_GENERIC_ADDRESS gas;
    struct acpi_cx *cx_ptr;

    sc->cpu_cx_count = 0;
    cx_ptr = sc->cpu_cx_states;


    sc->cpu_prev_sleep = 1000000;


    cx_ptr->type = ACPI_STATE_C1;
    cx_ptr->trans_lat = 0;
    cx_ptr++;
    sc->cpu_non_c2 = sc->cpu_cx_count;
    sc->cpu_non_c3 = sc->cpu_cx_count;
    sc->cpu_cx_count++;
    if (sc->cpu_p_blk_len < 5)
 return;


    gas.SpaceId = ACPI_ADR_SPACE_SYSTEM_IO;
    gas.BitWidth = 8;
    if (AcpiGbl_FADT.C2Latency <= 100) {
 gas.Address = sc->cpu_p_blk + 4;
 cx_ptr->res_rid = 0;
 acpi_bus_alloc_gas(sc->cpu_dev, &cx_ptr->res_type, &cx_ptr->res_rid,
     &gas, &cx_ptr->p_lvlx, RF_SHAREABLE);
 if (cx_ptr->p_lvlx != ((void*)0)) {
     cx_ptr->type = ACPI_STATE_C2;
     cx_ptr->trans_lat = AcpiGbl_FADT.C2Latency;
     cx_ptr++;
     sc->cpu_non_c3 = sc->cpu_cx_count;
     sc->cpu_cx_count++;
 }
    }
    if (sc->cpu_p_blk_len < 6)
 return;


    if (AcpiGbl_FADT.C3Latency <= 1000 && !(cpu_quirks & CPU_QUIRK_NO_C3)) {
 gas.Address = sc->cpu_p_blk + 5;
 cx_ptr->res_rid = 1;
 acpi_bus_alloc_gas(sc->cpu_dev, &cx_ptr->res_type, &cx_ptr->res_rid,
     &gas, &cx_ptr->p_lvlx, RF_SHAREABLE);
 if (cx_ptr->p_lvlx != ((void*)0)) {
     cx_ptr->type = ACPI_STATE_C3;
     cx_ptr->trans_lat = AcpiGbl_FADT.C3Latency;
     cx_ptr++;
     sc->cpu_cx_count++;
 }
    }
}
