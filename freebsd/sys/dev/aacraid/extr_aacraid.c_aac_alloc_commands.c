
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int8_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
struct aac_softc {int total_fibs; int aac_max_fibs_alloc; int aac_max_fibs; int aac_max_fib_size; int flags; int aac_fib_dmat; int aac_fibmap_tqh; int aac_buffer_dmat; struct aac_command* aac_commands; int aac_io_lock; int aac_dev; } ;
struct aac_fibmap {int aac_fibmap; scalar_t__ aac_fibs; struct aac_command* aac_commands; } ;
struct aac_fib_xporthdr {int dummy; } ;
struct aac_fib {int dummy; } ;
struct aac_command {int cm_fibphys; int cm_index; int cm_datamap; struct aac_fib* cm_fib; struct aac_softc* cm_sc; } ;


 int AAC_FLAGS_NEW_COMM_TYPE1 ;
 int BUS_DMA_NOWAIT ;
 int ENOMEM ;
 char* HBA_FLAGS_DBG_COMM_B ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int MA_OWNED ;
 int M_AACRAIDBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct aac_fibmap*,int ) ;
 int aac_map_command_helper ;
 int aacraid_release_command (struct aac_command*) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,scalar_t__,int,int ,int*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,scalar_t__,int ) ;
 int bzero (scalar_t__,int) ;
 int device_printf (int ,char*) ;
 int fm_link ;
 int free (struct aac_fibmap*,int ) ;
 int fwprintf (struct aac_softc*,char*,char*,...) ;
 struct aac_fibmap* malloc (int,int ,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
aac_alloc_commands(struct aac_softc *sc)
{
 struct aac_command *cm;
 struct aac_fibmap *fm;
 uint64_t fibphys;
 int i, error;
 u_int32_t maxsize;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 mtx_assert(&sc->aac_io_lock, MA_OWNED);

 if (sc->total_fibs + sc->aac_max_fibs_alloc > sc->aac_max_fibs)
  return (ENOMEM);

 fm = malloc(sizeof(struct aac_fibmap), M_AACRAIDBUF, M_NOWAIT|M_ZERO);
 if (fm == ((void*)0))
  return (ENOMEM);

 mtx_unlock(&sc->aac_io_lock);

 if (bus_dmamem_alloc(sc->aac_fib_dmat, (void **)&fm->aac_fibs,
        BUS_DMA_NOWAIT, &fm->aac_fibmap)) {
  device_printf(sc->aac_dev,
         "Not enough contiguous memory available.\n");
  free(fm, M_AACRAIDBUF);
  mtx_lock(&sc->aac_io_lock);
  return (ENOMEM);
 }

 maxsize = sc->aac_max_fib_size + 31;
 if (sc->flags & AAC_FLAGS_NEW_COMM_TYPE1)
  maxsize += sizeof(struct aac_fib_xporthdr);

 (void)bus_dmamap_load(sc->aac_fib_dmat, fm->aac_fibmap, fm->aac_fibs,
         sc->aac_max_fibs_alloc * maxsize,
         aac_map_command_helper, &fibphys, 0);
 mtx_lock(&sc->aac_io_lock);


 bzero(fm->aac_fibs, sc->aac_max_fibs_alloc * maxsize);
 for (i = 0; i < sc->aac_max_fibs_alloc; i++) {
  cm = sc->aac_commands + sc->total_fibs;
  fm->aac_commands = cm;
  cm->cm_sc = sc;
  cm->cm_fib = (struct aac_fib *)
   ((u_int8_t *)fm->aac_fibs + i * maxsize);
  cm->cm_fibphys = fibphys + i * maxsize;
  if (sc->flags & AAC_FLAGS_NEW_COMM_TYPE1) {
   u_int64_t fibphys_aligned;
   fibphys_aligned =
    (cm->cm_fibphys + sizeof(struct aac_fib_xporthdr) + 31) & ~31;
   cm->cm_fib = (struct aac_fib *)
    ((u_int8_t *)cm->cm_fib + (fibphys_aligned - cm->cm_fibphys));
   cm->cm_fibphys = fibphys_aligned;
  } else {
   u_int64_t fibphys_aligned;
   fibphys_aligned = (cm->cm_fibphys + 31) & ~31;
   cm->cm_fib = (struct aac_fib *)
    ((u_int8_t *)cm->cm_fib + (fibphys_aligned - cm->cm_fibphys));
   cm->cm_fibphys = fibphys_aligned;
  }
  cm->cm_index = sc->total_fibs;

  if ((error = bus_dmamap_create(sc->aac_buffer_dmat, 0,
            &cm->cm_datamap)) != 0)
   break;
  if (sc->aac_max_fibs <= 1 || sc->aac_max_fibs - sc->total_fibs > 1)
   aacraid_release_command(cm);
  sc->total_fibs++;
 }

 if (i > 0) {
  TAILQ_INSERT_TAIL(&sc->aac_fibmap_tqh, fm, fm_link);
  fwprintf(sc, HBA_FLAGS_DBG_COMM_B, "total_fibs= %d\n", sc->total_fibs);
  return (0);
 }

 bus_dmamap_unload(sc->aac_fib_dmat, fm->aac_fibmap);
 bus_dmamem_free(sc->aac_fib_dmat, fm->aac_fibs, fm->aac_fibmap);
 free(fm, M_AACRAIDBUF);
 return (ENOMEM);
}
