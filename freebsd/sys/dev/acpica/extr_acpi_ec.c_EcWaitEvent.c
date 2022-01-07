
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct acpi_ec_softc {scalar_t__ ec_gencount; int ec_dev; scalar_t__ ec_suspending; } ;
typedef int EC_EVENT ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_ASSERT (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_NO_HARDWARE_RESPONSE ;
 int CTR0 (int ,char*) ;
 int DELAY (int) ;
 int EC_POLL_DELAY ;
 int EcCheckStatus (struct acpi_ec_softc*,char*,int ) ;
 int KTR_ACPI ;
 scalar_t__ cold ;
 int device_printf (int ,char*) ;
 int ec ;
 int ec_polled_mode ;
 int ec_timeout ;
 int hz ;
 scalar_t__ rebooting ;
 int tsleep (struct acpi_ec_softc*,int ,char*,int) ;

__attribute__((used)) static ACPI_STATUS
EcWaitEvent(struct acpi_ec_softc *sc, EC_EVENT Event, u_int gen_count)
{
    static int no_intr = 0;
    ACPI_STATUS Status;
    int count, i, need_poll, slp_ival;

    ACPI_SERIAL_ASSERT(ec);
    Status = AE_NO_HARDWARE_RESPONSE;
    need_poll = cold || rebooting || ec_polled_mode || sc->ec_suspending;


    if (need_poll) {
 count = (ec_timeout * 1000) / EC_POLL_DELAY;
 if (count == 0)
     count = 1;
 DELAY(10);
 for (i = 0; i < count; i++) {
     Status = EcCheckStatus(sc, "poll", Event);
     if (ACPI_SUCCESS(Status))
  break;
     DELAY(EC_POLL_DELAY);
 }
    } else {
 slp_ival = hz / 1000;
 if (slp_ival != 0) {
     count = ec_timeout;
 } else {

     slp_ival = 1;
     count = ec_timeout / (1000 / hz);
 }







 for (i = 0; i < count; i++) {
     if (gen_count == sc->ec_gencount)
  tsleep(sc, 0, "ecgpe", slp_ival);






     Status = EcCheckStatus(sc, "sleep", Event);
     if (ACPI_SUCCESS(Status)) {
  if (gen_count == sc->ec_gencount)
      no_intr++;
  else
      no_intr = 0;
  break;
     }
     gen_count = sc->ec_gencount;
 }






 if (ACPI_FAILURE(Status))
     Status = EcCheckStatus(sc, "sleep_end", Event);
    }
    if (!need_poll && no_intr > 10) {
 device_printf(sc->ec_dev,
     "not getting interrupts, switched to polled mode\n");
 ec_polled_mode = 1;
    }
    if (ACPI_FAILURE(Status))
     CTR0(KTR_ACPI, "error: ec wait timed out");
    return (Status);
}
