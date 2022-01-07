
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct acpi_ec_softc {int ec_dev; int ec_gencount; } ;
typedef int EC_STATUS ;
typedef int EC_EVENT ;
typedef int EC_COMMAND ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_ASSERT (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int CTR1 (int ,char*,int) ;





 int EC_EVENT_INPUT_BUFFER_EMPTY ;
 int EC_EVENT_OUTPUT_BUFFER_FULL ;
 int EC_FLAG_BURST_MODE ;
 int EC_GET_CSR (struct acpi_ec_softc*) ;
 int EC_SET_CSR (struct acpi_ec_softc*,int) ;
 int EcWaitEvent (struct acpi_ec_softc*,int ,int ) ;
 int KTR_ACPI ;
 int device_printf (int ,char*,int) ;
 int ec ;
 int ec_burst_mode ;

__attribute__((used)) static ACPI_STATUS
EcCommand(struct acpi_ec_softc *sc, EC_COMMAND cmd)
{
    ACPI_STATUS status;
    EC_EVENT event;
    EC_STATUS ec_status;
    u_int gen_count;

    ACPI_SERIAL_ASSERT(ec);


    if (!ec_burst_mode && cmd == 131)
 return (AE_ERROR);


    switch (cmd) {
    case 129:
    case 128:
    case 132:
 event = EC_EVENT_INPUT_BUFFER_EMPTY;
 break;
    case 130:
    case 131:
 event = EC_EVENT_OUTPUT_BUFFER_FULL;
 break;
    default:
 device_printf(sc->ec_dev, "EcCommand: invalid command %#x\n", cmd);
 return (AE_BAD_PARAMETER);
    }





    status = EcWaitEvent(sc, EC_EVENT_INPUT_BUFFER_EMPTY, 0);
    if (ACPI_FAILURE(status))
 return (status);


    CTR1(KTR_ACPI, "ec running command %#x", cmd);
    gen_count = sc->ec_gencount;
    EC_SET_CSR(sc, cmd);
    status = EcWaitEvent(sc, event, gen_count);
    if (ACPI_SUCCESS(status)) {

 if (cmd == 131) {
     ec_status = EC_GET_CSR(sc);
     if ((ec_status & EC_FLAG_BURST_MODE) == 0)
  status = AE_ERROR;
 }
    } else
 device_printf(sc->ec_dev, "EcCommand: no response to %#x\n", cmd);
    return (status);
}
