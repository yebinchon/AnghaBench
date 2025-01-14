
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct aac_softc {int flags; int aac_max_sectors; int aac_sg_tablesize; int aac_max_fibs_alloc; int aac_max_fib_size; int aac_max_fibs; int total_fibs; int aac_io_lock; int aac_commands; int aac_fibmap_tqh; int aac_common; int aac_common_dmamap; int aac_common_dmat; int aac_dev; int aac_parent_dmat; int aac_fib_dmat; int aac_buffer_dmat; } ;
struct aac_fib_xporthdr {int dummy; } ;
struct aac_common {int dummy; } ;
struct aac_command {int dummy; } ;
typedef int bus_size_t ;


 int AAC_FLAGS_4GB_WINDOW ;
 int AAC_FLAGS_NEW_COMM_TYPE1 ;
 int AAC_FLAGS_SG_64BIT ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int M_AACRAIDBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 scalar_t__ aac_alloc_commands (struct aac_softc*) ;
 int aac_common_map ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int,int,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct aac_softc*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int * busdma_lock_mutex ;
 int bzero (int ,int) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
aac_alloc(struct aac_softc *sc)
{
 bus_size_t maxsize;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");




 if (bus_dma_tag_create(sc->aac_parent_dmat,
          1, 0,
          (sc->flags & AAC_FLAGS_SG_64BIT) ?
          BUS_SPACE_MAXADDR :
          BUS_SPACE_MAXADDR_32BIT,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          sc->aac_max_sectors << 9,
          sc->aac_sg_tablesize,
          BUS_SPACE_MAXSIZE_32BIT,
          BUS_DMA_ALLOCNOW,
          busdma_lock_mutex,
          &sc->aac_io_lock,
          &sc->aac_buffer_dmat)) {
  device_printf(sc->aac_dev, "can't allocate buffer DMA tag\n");
  return (ENOMEM);
 }




 if (sc->flags & AAC_FLAGS_NEW_COMM_TYPE1)
  maxsize = sc->aac_max_fibs_alloc * (sc->aac_max_fib_size +
   sizeof(struct aac_fib_xporthdr) + 31);
 else
  maxsize = sc->aac_max_fibs_alloc * (sc->aac_max_fib_size + 31);
 if (bus_dma_tag_create(sc->aac_parent_dmat,
          1, 0,
          (sc->flags & AAC_FLAGS_4GB_WINDOW) ?
          BUS_SPACE_MAXADDR_32BIT :
          0x7fffffff,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          maxsize,
          1,
          maxsize,
          0,
          ((void*)0), ((void*)0),
          &sc->aac_fib_dmat)) {
  device_printf(sc->aac_dev, "can't allocate FIB DMA tag\n");
  return (ENOMEM);
 }




 maxsize = sizeof(struct aac_common);
 maxsize += sc->aac_max_fibs * sizeof(u_int32_t);
 if (bus_dma_tag_create(sc->aac_parent_dmat,
          1, 0,
          (sc->flags & AAC_FLAGS_4GB_WINDOW) ?
          BUS_SPACE_MAXADDR_32BIT :
          0x7fffffff,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          maxsize,
          1,
          maxsize,
          0,
          ((void*)0), ((void*)0),
          &sc->aac_common_dmat)) {
  device_printf(sc->aac_dev,
         "can't allocate common structure DMA tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->aac_common_dmat, (void **)&sc->aac_common,
        BUS_DMA_NOWAIT, &sc->aac_common_dmamap)) {
  device_printf(sc->aac_dev, "can't allocate common structure\n");
  return (ENOMEM);
 }

 (void)bus_dmamap_load(sc->aac_common_dmat, sc->aac_common_dmamap,
   sc->aac_common, maxsize,
   aac_common_map, sc, 0);
 bzero(sc->aac_common, maxsize);


 TAILQ_INIT(&sc->aac_fibmap_tqh);
 sc->aac_commands = malloc(sc->aac_max_fibs * sizeof(struct aac_command),
      M_AACRAIDBUF, M_WAITOK|M_ZERO);
 mtx_lock(&sc->aac_io_lock);
 while (sc->total_fibs < sc->aac_max_fibs) {
  if (aac_alloc_commands(sc) != 0)
   break;
 }
 mtx_unlock(&sc->aac_io_lock);
 if (sc->total_fibs == 0)
  return (ENOMEM);

 return (0);
}
