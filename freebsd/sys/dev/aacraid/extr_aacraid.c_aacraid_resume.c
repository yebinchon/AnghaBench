
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_state; } ;
typedef int device_t ;


 int AAC_ACCESS_DEVREG (struct aac_softc*,int ) ;
 int AAC_ENABLE_INTERRUPT ;
 int AAC_STATE_SUSPEND ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 struct aac_softc* device_get_softc (int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;

int
aacraid_resume(device_t dev)
{
 struct aac_softc *sc;

 sc = device_get_softc(dev);

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 sc->aac_state &= ~AAC_STATE_SUSPEND;
 AAC_ACCESS_DEVREG(sc, AAC_ENABLE_INTERRUPT);
 return(0);
}
