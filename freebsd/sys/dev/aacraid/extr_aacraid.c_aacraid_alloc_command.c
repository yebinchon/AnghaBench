
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {scalar_t__ total_fibs; scalar_t__ aac_max_fibs; int aifthread; int aifflags; } ;
struct aac_command {int dummy; } ;


 int AAC_AIFFLAGS_ALLOCFIBS ;
 int EBUSY ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 struct aac_command* aac_dequeue_free (struct aac_softc*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int wakeup (int ) ;

int
aacraid_alloc_command(struct aac_softc *sc, struct aac_command **cmp)
{
 struct aac_command *cm;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 if ((cm = aac_dequeue_free(sc)) == ((void*)0)) {
  if (sc->total_fibs < sc->aac_max_fibs) {
   sc->aifflags |= AAC_AIFFLAGS_ALLOCFIBS;
   wakeup(sc->aifthread);
  }
  return (EBUSY);
 }

 *cmp = cm;
 return(0);
}
