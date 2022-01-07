
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {scalar_t__ d_drv1; } ;
struct aac_disk {int ad_flags; } ;


 int AAC_DISK_OPEN ;
 int ENXIO ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (int *,char*,char*) ;

__attribute__((used)) static int
aac_disk_close(struct disk *dp)
{
 struct aac_disk *sc;

 fwprintf(((void*)0), HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 sc = (struct aac_disk *)dp->d_drv1;

 if (sc == ((void*)0))
  return (ENXIO);

 sc->ad_flags &= ~AAC_DISK_OPEN;
 return (0);
}
