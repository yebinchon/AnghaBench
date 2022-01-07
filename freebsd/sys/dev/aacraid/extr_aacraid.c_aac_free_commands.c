
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_max_fibs_alloc; int aac_fib_dmat; int aac_buffer_dmat; int total_fibs; int aac_fibmap_tqh; } ;
struct aac_fibmap {int aac_fibmap; int aac_fibs; struct aac_command* aac_commands; } ;
struct aac_command {int cm_datamap; } ;


 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int M_AACRAIDBUF ;
 struct aac_fibmap* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct aac_fibmap*,int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int fm_link ;
 int free (struct aac_fibmap*,int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static void
aac_free_commands(struct aac_softc *sc)
{
 struct aac_fibmap *fm;
 struct aac_command *cm;
 int i;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 while ((fm = TAILQ_FIRST(&sc->aac_fibmap_tqh)) != ((void*)0)) {

  TAILQ_REMOVE(&sc->aac_fibmap_tqh, fm, fm_link);




  for (i = 0; i < sc->aac_max_fibs_alloc && sc->total_fibs--; i++) {
   cm = fm->aac_commands + i;
   bus_dmamap_destroy(sc->aac_buffer_dmat, cm->cm_datamap);
  }
  bus_dmamap_unload(sc->aac_fib_dmat, fm->aac_fibmap);
  bus_dmamem_free(sc->aac_fib_dmat, fm->aac_fibs, fm->aac_fibmap);
  free(fm, M_AACRAIDBUF);
 }
}
