
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int uintmax_t ;
typedef int uint8_t ;
typedef int u_int32_t ;
struct disk {struct aac_disk* d_drv1; } ;
struct aac_softc {int aac_max_sectors; int flags; int aac_buffer_dmat; int aac_dev; TYPE_1__* aac_common; } ;
struct TYPE_8__ {scalar_t__ Size; } ;
struct aac_fib {TYPE_4__ Header; int * data; } ;
struct aac_disk {TYPE_3__* ad_container; struct aac_softc* ad_controller; } ;
struct aac_blockwrite64 {size_t BlockNumber; size_t SectorCount; scalar_t__ Flags; scalar_t__ Pad; int ContainerId; int Command; } ;
struct aac_blockwrite {size_t BlockNumber; size_t ByteCount; int Stable; int ContainerId; int Command; } ;
typedef size_t off_t ;
typedef int bus_dmamap_t ;
typedef int bus_dmamap_callback_t ;
struct TYPE_6__ {int ObjectId; } ;
struct TYPE_7__ {TYPE_2__ co_mntobj; } ;
struct TYPE_5__ {struct aac_fib ac_sync_fib; } ;


 size_t AAC_BLOCK_SIZE ;
 int AAC_FLAGS_SG_64BIT ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int CUNSTABLE ;
 int ContainerCommand ;
 int ContainerCommand64 ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int VM_CtBlockWrite ;
 int VM_CtHostWrite64 ;
 int * aac_dump_map_sg ;
 int * aac_dump_map_sg64 ;
 scalar_t__ aac_sync_fib (struct aac_softc*,int ,int ,struct aac_fib*,int) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,void*,size_t,int *,struct aac_fib*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
aac_disk_dump(void *arg, void *virtual, vm_offset_t physical, off_t offset, size_t length)
{
 struct aac_disk *ad;
 struct aac_softc *sc;
 struct aac_fib *fib;
 size_t len, maxio;
 int size;
 static bus_dmamap_t dump_datamap;
 static int first = 0;
 struct disk *dp;
 bus_dmamap_callback_t *callback;
 u_int32_t command;

 dp = arg;
 ad = dp->d_drv1;

 if (ad == ((void*)0))
  return (EINVAL);

 sc= ad->ad_controller;

 if (!first) {
  first = 1;
  if (bus_dmamap_create(sc->aac_buffer_dmat, 0, &dump_datamap)) {
   device_printf(sc->aac_dev,
       "bus_dmamap_create failed\n");
   return (ENOMEM);
  }
 }


 fib = &sc->aac_common->ac_sync_fib;

 while (length > 0) {
  maxio = sc->aac_max_sectors << 9;
  len = (length > maxio) ? maxio : length;
  if ((sc->flags & AAC_FLAGS_SG_64BIT) == 0) {
   struct aac_blockwrite *bw;
   bw = (struct aac_blockwrite *)&fib->data[0];
   bw->Command = VM_CtBlockWrite;
   bw->ContainerId = ad->ad_container->co_mntobj.ObjectId;
   bw->BlockNumber = offset / AAC_BLOCK_SIZE;
   bw->ByteCount = len;
   bw->Stable = CUNSTABLE;
   command = ContainerCommand;
   callback = aac_dump_map_sg;
   size = sizeof(struct aac_blockwrite);
  } else {
   struct aac_blockwrite64 *bw;
   bw = (struct aac_blockwrite64 *)&fib->data[0];
   bw->Command = VM_CtHostWrite64;
   bw->ContainerId = ad->ad_container->co_mntobj.ObjectId;
   bw->BlockNumber = offset / AAC_BLOCK_SIZE;
   bw->SectorCount = len / AAC_BLOCK_SIZE;
   bw->Pad = 0;
   bw->Flags = 0;
   command = ContainerCommand64;
   callback = aac_dump_map_sg64;
   size = sizeof(struct aac_blockwrite64);
  }







  if (bus_dmamap_load(sc->aac_buffer_dmat, dump_datamap, virtual,
      len, callback, fib, BUS_DMA_NOWAIT) != 0)
   return (ENOMEM);

  bus_dmamap_sync(sc->aac_buffer_dmat, dump_datamap,
      BUS_DMASYNC_PREWRITE);


  size += fib->Header.Size;

  if (aac_sync_fib(sc, command, 0, fib, size)) {
   device_printf(sc->aac_dev,
        "Error dumping block 0x%jx\n",
        (uintmax_t)physical);
   return (EIO);
  }

  bus_dmamap_sync(sc->aac_buffer_dmat, dump_datamap,
      BUS_DMASYNC_POSTWRITE);

  bus_dmamap_unload(sc->aac_buffer_dmat, dump_datamap);

  length -= len;
  offset += len;
  virtual = (uint8_t *)virtual + len;
 }

 return (0);
}
