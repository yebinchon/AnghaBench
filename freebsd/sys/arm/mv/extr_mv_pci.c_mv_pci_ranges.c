
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_pci_range {int dummy; } ;
typedef int phandle_t ;


 int debugf (char*,...) ;
 int mv_pci_range_dump (struct mv_pci_range*) ;
 int mv_pci_ranges_decode (int ,struct mv_pci_range*,struct mv_pci_range*) ;

__attribute__((used)) static int
mv_pci_ranges(phandle_t node, struct mv_pci_range *io_space,
    struct mv_pci_range *mem_space)
{
 int err;

 debugf("Processing PCI node: %x\n", node);
 if ((err = mv_pci_ranges_decode(node, io_space, mem_space)) != 0) {
  debugf("could not decode parent PCI node 'ranges'\n");
  return (err);
 }

 debugf("Post fixup dump:\n");
 mv_pci_range_dump(io_space);
 mv_pci_range_dump(mem_space);
 return (0);
}
