
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ccp_softc {int pci_bus_handle; int pci_bus_tag; } ;


 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static inline void
ccp_write_4(struct ccp_softc *sc, uint32_t offset, uint32_t value)
{
 bus_space_write_4(sc->pci_bus_tag, sc->pci_bus_handle, offset, value);
}
