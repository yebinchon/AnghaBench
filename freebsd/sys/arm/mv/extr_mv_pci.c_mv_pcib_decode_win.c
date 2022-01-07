
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_pcib_softc {int sc_mem_size; int sc_mem_base; int sc_io_size; int sc_io_base; int sc_mem_win_attr; int sc_win_target; int sc_io_win_attr; int sc_dev; } ;
struct mv_pci_range {int len; int base_parent; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int decode_win_cpu_set (int ,int ,int ,int ,int ) ;
 int device_printf (int ,char*) ;
 int mv_pci_ranges (int ,struct mv_pci_range*,struct mv_pci_range*) ;

__attribute__((used)) static int
mv_pcib_decode_win(phandle_t node, struct mv_pcib_softc *sc)
{
 struct mv_pci_range io_space, mem_space;
 device_t dev;
 int error;

 dev = sc->sc_dev;

 if ((error = mv_pci_ranges(node, &io_space, &mem_space)) != 0) {
  device_printf(dev, "could not retrieve 'ranges' data\n");
  return (error);
 }


 error = decode_win_cpu_set(sc->sc_win_target,
     sc->sc_io_win_attr, io_space.base_parent, io_space.len, ~0);
 if (error < 0) {
  device_printf(dev, "could not set up CPU decode "
      "window for PCI IO\n");
  return (ENXIO);
 }
 error = decode_win_cpu_set(sc->sc_win_target,
     sc->sc_mem_win_attr, mem_space.base_parent, mem_space.len,
     mem_space.base_parent);
 if (error < 0) {
  device_printf(dev, "could not set up CPU decode "
      "windows for PCI MEM\n");
  return (ENXIO);
 }

 sc->sc_io_base = io_space.base_parent;
 sc->sc_io_size = io_space.len;

 sc->sc_mem_base = mem_space.base_parent;
 sc->sc_mem_size = mem_space.len;

 return (0);
}
