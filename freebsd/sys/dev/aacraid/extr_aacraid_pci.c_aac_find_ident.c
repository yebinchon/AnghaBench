
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct aac_ident {scalar_t__ vendor; scalar_t__ device; } ;
typedef int device_t ;


 struct aac_ident* aacraid_family_identifiers ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static struct aac_ident *
aac_find_ident(device_t dev)
{
 struct aac_ident *m;
 u_int16_t vendid, devid;

 vendid = pci_get_vendor(dev);
 devid = pci_get_device(dev);

 for (m = aacraid_family_identifiers; m->vendor != 0; m++) {
  if ((m->vendor == vendid) && (m->device == devid))
   return (m);
 }

 return (((void*)0));
}
