
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct disk {scalar_t__ d_drv1; } ;
struct aac_disk {int ad_flags; TYPE_1__* ad_controller; } ;
struct TYPE_2__ {int aac_state; int aac_dev; } ;


 int AAC_DISK_OPEN ;
 int AAC_STATE_SUSPEND ;
 int ENXIO ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int device_printf (int ,char*,int) ;
 int fwprintf (int *,char*,char*) ;
 int printf (char*) ;

__attribute__((used)) static int
aac_disk_open(struct disk *dp)
{
 struct aac_disk *sc;

 fwprintf(((void*)0), HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 sc = (struct aac_disk *)dp->d_drv1;

 if (sc == ((void*)0)) {
  printf("aac_disk_open: No Softc\n");
  return (ENXIO);
 }


 if (sc->ad_controller->aac_state & AAC_STATE_SUSPEND) {
  device_printf(sc->ad_controller->aac_dev,
      "Controller Suspended controller state = 0x%x\n",
      sc->ad_controller->aac_state);
  return(ENXIO);
 }

 sc->ad_flags |= AAC_DISK_OPEN;
 return (0);
}
