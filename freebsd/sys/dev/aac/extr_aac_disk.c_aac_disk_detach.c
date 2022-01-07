
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_disk {int ad_flags; int ad_disk; } ;
typedef int device_t ;


 int AAC_DISK_OPEN ;
 int EBUSY ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 scalar_t__ device_get_softc (int ) ;
 int disk_destroy (int ) ;
 int fwprintf (int *,char*,char*) ;

__attribute__((used)) static int
aac_disk_detach(device_t dev)
{
 struct aac_disk *sc;

 sc = (struct aac_disk *)device_get_softc(dev);
 fwprintf(((void*)0), HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 if (sc->ad_flags & AAC_DISK_OPEN)
  return(EBUSY);

 disk_destroy(sc->ad_disk);

 return(0);
}
