
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct acpi_ec_softc {int ec_dev; int ec_gencount; } ;
typedef int UINT8 ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_ASSERT (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_OK ;
 int CTR1 (int ,char*,int ) ;
 int EC_COMMAND_READ ;
 int EC_EVENT_INPUT_BUFFER_EMPTY ;
 int EC_EVENT_OUTPUT_BUFFER_FULL ;
 int EC_GET_DATA (struct acpi_ec_softc*) ;
 int EC_SET_DATA (struct acpi_ec_softc*,int ) ;
 int EcCheckStatus (struct acpi_ec_softc*,char*,int ) ;
 int EcCommand (struct acpi_ec_softc*,int ) ;
 int EcWaitEvent (struct acpi_ec_softc*,int ,int ) ;
 int KTR_ACPI ;
 int device_printf (int ,char*) ;
 int ec ;

__attribute__((used)) static ACPI_STATUS
EcRead(struct acpi_ec_softc *sc, UINT8 Address, UINT8 *Data)
{
    ACPI_STATUS status;
    u_int gen_count;
    int retry;

    ACPI_SERIAL_ASSERT(ec);
    CTR1(KTR_ACPI, "ec read from %#x", Address);

    for (retry = 0; retry < 2; retry++) {
 status = EcCommand(sc, EC_COMMAND_READ);
 if (ACPI_FAILURE(status))
     return (status);

 gen_count = sc->ec_gencount;
 EC_SET_DATA(sc, Address);
 status = EcWaitEvent(sc, EC_EVENT_OUTPUT_BUFFER_FULL, gen_count);
 if (ACPI_SUCCESS(status)) {
     *Data = EC_GET_DATA(sc);
     return (AE_OK);
 }
 if (ACPI_FAILURE(EcCheckStatus(sc, "retr_check",
     EC_EVENT_INPUT_BUFFER_EMPTY)))
     break;
    }
    device_printf(sc->ec_dev, "EcRead: failed waiting to get data\n");
    return (status);
}
