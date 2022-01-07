
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec_softc {int ec_sci_pend; } ;


 int EcGpeQueryHandlerSub (struct acpi_ec_softc*) ;
 int KASSERT (int ,char*) ;
 int atomic_cmpset_int (int *,int,int ) ;
 int atomic_load_acq_int (int *) ;

__attribute__((used)) static void
EcGpeQueryHandler(void *Context)
{
    struct acpi_ec_softc *sc = (struct acpi_ec_softc *)Context;
    int pending;

    KASSERT(Context != ((void*)0), ("EcGpeQueryHandler called with NULL"));

    do {

 pending = atomic_load_acq_int(&sc->ec_sci_pend);


 EcGpeQueryHandlerSub(sc);






    } while (!atomic_cmpset_int(&sc->ec_sci_pend, pending, 0));
}
