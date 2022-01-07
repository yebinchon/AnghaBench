
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct acpi_cx {int trans_lat; scalar_t__ type; scalar_t__ mwait_bm_avoidance; int * p_lvlx; int mwait_hint; scalar_t__ do_mwait; } ;
struct acpi_cpu_softc {int cpu_prev_sleep; int cpu_cx_lowest; int cpu_non_c2; int cpu_non_c3; int * cpu_cx_stats; struct acpi_cx* cpu_cx_states; } ;
typedef int sbintime_t ;
struct TYPE_2__ {scalar_t__ td_critnest; } ;
typedef int ACPI_STATUS ;


 int ACPI_BITREG_ARB_DISABLE ;
 int ACPI_BITREG_BUS_MASTER_RLD ;
 int ACPI_BITREG_BUS_MASTER_STATUS ;
 int ACPI_ENABLE_IRQS () ;
 int ACPI_FLUSH_CPU_CACHE () ;
 scalar_t__ ACPI_STATE_C0 ;
 scalar_t__ ACPI_STATE_C1 ;
 scalar_t__ ACPI_STATE_C3 ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AcpiGetTimer (int*) ;
 int AcpiGetTimerDuration (int,int,int*) ;
 int AcpiReadBitRegister (int ,int*) ;
 int AcpiWriteBitRegister (int ,int) ;
 int CPU_GET_REG (int *,int) ;
 int CPU_QUIRK_NO_BM_CTRL ;
 int KASSERT (int,char*) ;
 size_t PCPU_GET (int ) ;
 int PM_USEC (int) ;
 int acpi_cpu_c1 () ;
 int acpi_cpu_idle_mwait (int ) ;
 scalar_t__ cpu_disable_c2_sleep ;
 scalar_t__ cpu_disable_c3_sleep ;
 int cpu_quirks ;
 struct acpi_cpu_softc** cpu_softc ;
 int cpu_tickrate () ;
 int cpu_ticks () ;
 int cpuid ;
 TYPE_1__* curthread ;
 int hz ;
 scalar_t__ is_idle_disabled (struct acpi_cpu_softc*) ;
 int min (int,int) ;

__attribute__((used)) static void
acpi_cpu_idle(sbintime_t sbt)
{
    struct acpi_cpu_softc *sc;
    struct acpi_cx *cx_next;
    uint64_t cputicks;
    uint32_t start_time, end_time;
    ACPI_STATUS status;
    int bm_active, cx_next_idx, i, us;






    sc = cpu_softc[PCPU_GET(cpuid)];
    if (sc == ((void*)0)) {
 acpi_cpu_c1();
 return;
    }


    if (is_idle_disabled(sc)) {
 acpi_cpu_c1();
 return;
    }


    us = sc->cpu_prev_sleep;
    if (sbt >= 0 && us > (sbt >> 12))
 us = (sbt >> 12);
    cx_next_idx = 0;
    if (cpu_disable_c2_sleep)
 i = min(sc->cpu_cx_lowest, sc->cpu_non_c2);
    else if (cpu_disable_c3_sleep)
 i = min(sc->cpu_cx_lowest, sc->cpu_non_c3);
    else
 i = sc->cpu_cx_lowest;
    for (; i >= 0; i--) {
 if (sc->cpu_cx_states[i].trans_lat * 3 <= us) {
     cx_next_idx = i;
     break;
 }
    }







    if ((cpu_quirks & CPU_QUIRK_NO_BM_CTRL) == 0 &&
 cx_next_idx > sc->cpu_non_c3) {
 status = AcpiReadBitRegister(ACPI_BITREG_BUS_MASTER_STATUS, &bm_active);
 if (ACPI_SUCCESS(status) && bm_active != 0) {
     AcpiWriteBitRegister(ACPI_BITREG_BUS_MASTER_STATUS, 1);
     cx_next_idx = sc->cpu_non_c3;
 }
    }


    cx_next = &sc->cpu_cx_states[cx_next_idx];
    sc->cpu_cx_stats[cx_next_idx]++;
    KASSERT(cx_next->type != ACPI_STATE_C0, ("acpi_cpu_idle: C0 sleep"));







    if (cx_next->type == ACPI_STATE_C1) {
 cputicks = cpu_ticks();
 if (cx_next->p_lvlx != ((void*)0)) {

     CPU_GET_REG(cx_next->p_lvlx, 1);
 }
 if (cx_next->do_mwait)
     acpi_cpu_idle_mwait(cx_next->mwait_hint);
 else
     acpi_cpu_c1();
 end_time = ((cpu_ticks() - cputicks) << 20) / cpu_tickrate();
 if (curthread->td_critnest == 0)
  end_time = min(end_time, 500000 / hz);

 if (cx_next->do_mwait)
     ACPI_ENABLE_IRQS();
 sc->cpu_prev_sleep = (sc->cpu_prev_sleep * 3 + end_time) / 4;
 return;
    }





    if (cx_next->type == ACPI_STATE_C3 || cx_next->mwait_bm_avoidance) {
 if ((cpu_quirks & CPU_QUIRK_NO_BM_CTRL) == 0) {
     AcpiWriteBitRegister(ACPI_BITREG_ARB_DISABLE, 1);
     AcpiWriteBitRegister(ACPI_BITREG_BUS_MASTER_RLD, 1);
 } else
     ACPI_FLUSH_CPU_CACHE();
    }







    if (cx_next->type == ACPI_STATE_C3) {
 AcpiGetTimer(&start_time);
 cputicks = 0;
    } else {
 start_time = 0;
 cputicks = cpu_ticks();
    }
    if (cx_next->do_mwait)
 acpi_cpu_idle_mwait(cx_next->mwait_hint);
    else
 CPU_GET_REG(cx_next->p_lvlx, 1);







    AcpiGetTimer(&end_time);
    if (cx_next->type == ACPI_STATE_C3) {
 AcpiGetTimer(&end_time);
 AcpiGetTimerDuration(start_time, end_time, &end_time);
    } else
 end_time = ((cpu_ticks() - cputicks) << 20) / cpu_tickrate();


    if ((cx_next->type == ACPI_STATE_C3 || cx_next->mwait_bm_avoidance) &&
      (cpu_quirks & CPU_QUIRK_NO_BM_CTRL) == 0) {
 AcpiWriteBitRegister(ACPI_BITREG_ARB_DISABLE, 0);
 AcpiWriteBitRegister(ACPI_BITREG_BUS_MASTER_RLD, 0);
    }
    ACPI_ENABLE_IRQS();

    sc->cpu_prev_sleep = (sc->cpu_prev_sleep * 3 + PM_USEC(end_time)) / 4;
}
