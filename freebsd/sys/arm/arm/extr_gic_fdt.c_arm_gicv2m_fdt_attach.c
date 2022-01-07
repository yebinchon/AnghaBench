
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_gicv2m_softc {int sc_xref; } ;
typedef int device_t ;


 int OF_xref_from_node (int ) ;
 int arm_gicv2m_attach (int ) ;
 struct arm_gicv2m_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
arm_gicv2m_fdt_attach(device_t dev)
{
 struct arm_gicv2m_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_xref = OF_xref_from_node(ofw_bus_get_node(dev));

 return (arm_gicv2m_attach(dev));
}
