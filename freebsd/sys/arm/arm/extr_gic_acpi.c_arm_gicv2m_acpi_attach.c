
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_gicv2m_softc {int sc_xref; } ;
typedef int device_t ;


 int ACPI_MSI_XREF ;
 int arm_gicv2m_attach (int ) ;
 struct arm_gicv2m_softc* device_get_softc (int ) ;

__attribute__((used)) static int
arm_gicv2m_acpi_attach(device_t dev)
{
 struct arm_gicv2m_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_xref = ACPI_MSI_XREF;

 return (arm_gicv2m_attach(dev));
}
