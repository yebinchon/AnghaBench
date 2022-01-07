
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_ident {int desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 struct aac_ident* aac_find_ident (int ) ;
 int device_set_desc (int ,int ) ;
 int fwprintf (int *,char*,char*) ;

__attribute__((used)) static int
aac_pci_probe(device_t dev)
{
 const struct aac_ident *id;

 fwprintf(((void*)0), HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 if ((id = aac_find_ident(dev)) != ((void*)0)) {
  device_set_desc(dev, id->desc);
  return(BUS_PROBE_DEFAULT);
 }
 return(ENXIO);
}
