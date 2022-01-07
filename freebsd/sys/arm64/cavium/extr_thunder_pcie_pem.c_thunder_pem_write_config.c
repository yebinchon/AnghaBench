
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct thunder_pem_softc {int reg_bst; scalar_t__ sli_window_base; int pem_sli_base; } ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 scalar_t__ PCIE_REGMAX ;
 scalar_t__ PCI_BUSMAX ;
 scalar_t__ PCI_FUNCMAX ;
 scalar_t__ PCI_SLOTMAX ;
 scalar_t__ PEM_BUS_SHIFT ;
 scalar_t__ PEM_FUNC_SHIFT ;
 scalar_t__ PEM_SLOT_SHIFT ;
 int bus_space_map (int ,scalar_t__,scalar_t__,int ,int *) ;
 int bus_space_unmap (int ,int ,scalar_t__) ;
 int bus_space_write_1 (int ,int ,scalar_t__,int ) ;
 int bus_space_write_2 (int ,int ,scalar_t__,int ) ;
 int bus_space_write_4 (int ,int ,scalar_t__,int ) ;
 struct thunder_pem_softc* device_get_softc (int ) ;
 int htole16 (int ) ;
 int htole32 (int ) ;

__attribute__((used)) static void
thunder_pem_write_config(device_t dev, u_int bus, u_int slot,
    u_int func, u_int reg, uint32_t val, int bytes)
{
 uint64_t offset;
 struct thunder_pem_softc *sc;
 bus_space_tag_t t;
 bus_space_handle_t h;

 if ((bus > PCI_BUSMAX) || (slot > PCI_SLOTMAX) ||
     (func > PCI_FUNCMAX) || (reg > PCIE_REGMAX))
  return;

 sc = device_get_softc(dev);


 offset = (bus << PEM_BUS_SHIFT) | (slot << PEM_SLOT_SHIFT) |
     (func << PEM_FUNC_SHIFT);
 t = sc->reg_bst;
 h = sc->pem_sli_base;

 bus_space_map(sc->reg_bst, sc->sli_window_base + offset,
     PCIE_REGMAX, 0, &h);

 switch (bytes) {
 case 1:
  bus_space_write_1(t, h, reg, val);
  break;
 case 2:
  bus_space_write_2(t, h, reg, htole16(val));
  break;
 case 4:
  bus_space_write_4(t, h, reg, htole32(val));
  break;
 default:
  break;
 }

 bus_space_unmap(sc->reg_bst, h, PCIE_REGMAX);
}
