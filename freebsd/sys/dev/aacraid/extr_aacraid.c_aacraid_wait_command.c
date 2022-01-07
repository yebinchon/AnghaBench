
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_io_lock; } ;
struct aac_command {struct aac_softc* cm_sc; } ;


 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int MA_OWNED ;
 int PRIBIO ;
 int aac_enqueue_ready (struct aac_command*) ;
 int aacraid_startio (struct aac_softc*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int msleep (struct aac_command*,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;

int
aacraid_wait_command(struct aac_command *cm)
{
 struct aac_softc *sc;
 int error;

 sc = cm->cm_sc;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 mtx_assert(&sc->aac_io_lock, MA_OWNED);


 aac_enqueue_ready(cm);
 aacraid_startio(sc);
 error = msleep(cm, &sc->aac_io_lock, PRIBIO, "aacraid_wait", 0);
 return(error);
}
