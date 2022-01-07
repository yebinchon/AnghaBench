
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
 int AE_OK ;
 int CTR2 (int ,char*,int ,int ) ;
 int EC_COMMAND_WRITE ;
 int EC_EVENT_INPUT_BUFFER_EMPTY ;
 int EC_SET_DATA (struct acpi_ec_softc*,int ) ;
 int EcCommand (struct acpi_ec_softc*,int ) ;
 int EcWaitEvent (struct acpi_ec_softc*,int ,int ) ;
 int KTR_ACPI ;
 int device_printf (int ,char*) ;
 int ec ;

__attribute__((used)) static ACPI_STATUS
EcWrite(struct acpi_ec_softc *sc, UINT8 Address, UINT8 Data)
{
    ACPI_STATUS status;
    u_int gen_count;

    ACPI_SERIAL_ASSERT(ec);
    CTR2(KTR_ACPI, "ec write to %#x, data %#x", Address, Data);

    status = EcCommand(sc, EC_COMMAND_WRITE);
    if (ACPI_FAILURE(status))
 return (status);

    gen_count = sc->ec_gencount;
    EC_SET_DATA(sc, Address);
    status = EcWaitEvent(sc, EC_EVENT_INPUT_BUFFER_EMPTY, gen_count);
    if (ACPI_FAILURE(status)) {
 device_printf(sc->ec_dev, "EcWrite: failed waiting for sent address\n");
 return (status);
    }

    gen_count = sc->ec_gencount;
    EC_SET_DATA(sc, Data);
    status = EcWaitEvent(sc, EC_EVENT_INPUT_BUFFER_EMPTY, gen_count);
    if (ACPI_FAILURE(status)) {
 device_printf(sc->ec_dev, "EcWrite: failed waiting for sent data\n");
 return (status);
    }

    return (AE_OK);
}
