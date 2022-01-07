
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pciid {scalar_t__ devid; int desc; } ;
typedef int device_t ;


 int ENXIO ;
 struct pciid* ccp_ids ;
 int device_set_desc (int ,int ) ;
 size_t nitems (struct pciid*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
ccp_probe(device_t dev)
{
 struct pciid *ip;
 uint32_t id;

 id = pci_get_devid(dev);
 for (ip = ccp_ids; ip < &ccp_ids[nitems(ccp_ids)]; ip++) {
  if (id == ip->devid) {
   device_set_desc(dev, ip->desc);
   return (0);
  }
 }
 return (ENXIO);
}
