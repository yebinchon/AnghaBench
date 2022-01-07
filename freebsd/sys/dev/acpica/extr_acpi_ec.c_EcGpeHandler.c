
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec_softc {int ec_sci_pend; int ec_gencount; } ;
typedef int UINT32 ;
typedef int EC_STATUS ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_REENABLE_GPE ;
 int AcpiOsExecute (int ,int ,void*) ;
 int CTR0 (int ,char*) ;
 int EC_EVENT_SCI ;
 int EC_GET_CSR (struct acpi_ec_softc*) ;
 int EcGpeQueryHandler ;
 int KASSERT (int ,char*) ;
 int KTR_ACPI ;
 int OSL_GPE_HANDLER ;
 int atomic_add_int (int *,int) ;
 scalar_t__ atomic_fetchadd_int (int *,int) ;
 int atomic_store_rel_int (int *,int ) ;
 int printf (char*) ;
 int wakeup (struct acpi_ec_softc*) ;

__attribute__((used)) static UINT32
EcGpeHandler(ACPI_HANDLE GpeDevice, UINT32 GpeNumber, void *Context)
{
    struct acpi_ec_softc *sc = Context;
    ACPI_STATUS Status;
    EC_STATUS EcStatus;

    KASSERT(Context != ((void*)0), ("EcGpeHandler called with NULL"));
    CTR0(KTR_ACPI, "ec gpe handler start");







    atomic_add_int(&sc->ec_gencount, 1);
    wakeup(sc);





    EcStatus = EC_GET_CSR(sc);
    if ((EcStatus & EC_EVENT_SCI) &&
 atomic_fetchadd_int(&sc->ec_sci_pend, 1) == 0) {
 CTR0(KTR_ACPI, "ec gpe queueing query handler");
 Status = AcpiOsExecute(OSL_GPE_HANDLER, EcGpeQueryHandler, Context);
 if (ACPI_FAILURE(Status)) {
     printf("EcGpeHandler: queuing GPE query handler failed\n");
     atomic_store_rel_int(&sc->ec_sci_pend, 0);
 }
    }
    return (ACPI_REENABLE_GPE);
}
