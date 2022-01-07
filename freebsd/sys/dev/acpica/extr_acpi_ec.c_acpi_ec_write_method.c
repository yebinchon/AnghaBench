
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct acpi_ec_softc {int dummy; } ;
typedef int device_t ;
typedef int UINT64 ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_WRITE ;
 int ENXIO ;
 int EcSpaceHandler (int ,int ,int,int *,struct acpi_ec_softc*,int *) ;
 struct acpi_ec_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_ec_write_method(device_t dev, u_int addr, UINT64 val, int width)
{
    struct acpi_ec_softc *sc;
    ACPI_STATUS status;

    sc = device_get_softc(dev);
    status = EcSpaceHandler(ACPI_WRITE, addr, width * 8, &val, sc, ((void*)0));
    if (ACPI_FAILURE(status))
 return (ENXIO);
    return (0);
}
