
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_state; } ;
typedef int device_t ;


 int AAC_MASK_INTERRUPTS (struct aac_softc*) ;
 int AAC_STATE_SUSPEND ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 struct aac_softc* device_get_softc (int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;

int
aac_suspend(device_t dev)
{
 struct aac_softc *sc;

 sc = device_get_softc(dev);

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 sc->aac_state |= AAC_STATE_SUSPEND;

 AAC_MASK_INTERRUPTS(sc);
 return(0);
}
