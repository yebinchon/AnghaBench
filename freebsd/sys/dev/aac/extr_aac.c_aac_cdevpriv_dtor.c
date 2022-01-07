
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_dev; } ;


 int Giant ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int device_unbusy (int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
aac_cdevpriv_dtor(void *arg)
{
 struct aac_softc *sc;

 sc = arg;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 mtx_lock(&Giant);
 device_unbusy(sc->aac_dev);
 mtx_unlock(&Giant);
}
