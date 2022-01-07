
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_28__ {int zp_copies; int zp_checksum; } ;
struct TYPE_29__ {int io_txg; int io_size; int io_flags; scalar_t__ io_priority; size_t io_allocator; int io_error; scalar_t__ io_ready; int io_pipeline; int io_bookmark; int io_abd; TYPE_1__ io_prop; TYPE_5__** io_private; TYPE_5__* io_gang_tree; int io_alloc_list; int * io_bp; struct TYPE_29__* io_gang_leader; int * io_spa; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_30__ {int zp_copies; void* zp_nopwrite; void* zp_dedup_verify; void* zp_dedup; scalar_t__ zp_level; int zp_type; int zp_compress; int zp_checksum; } ;
typedef TYPE_3__ zio_prop_t ;
struct TYPE_31__ {int * zg_blkptr; } ;
typedef TYPE_4__ zio_gbh_phys_t ;
struct TYPE_32__ {int * gn_child; TYPE_4__* gn_gbh; } ;
typedef TYPE_5__ zio_gang_node_t ;
typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_33__ {int * mc_alloc_slots; } ;
typedef TYPE_6__ metaslab_class_t ;
typedef int boolean_t ;
typedef int blkptr_t ;
typedef int abd_t ;


 int ASSERT (int) ;
 void* B_FALSE ;
 int DMU_OT_NONE ;
 int METASLAB_ASYNC_ALLOC ;
 int METASLAB_GANG_HEADER ;
 int METASLAB_HINTBP_FAVOR ;
 int MIN (int,int ) ;
 int P2ROUNDUP (int,int) ;
 int SPA_GANGBLOCKSIZE ;
 int SPA_GBH_NBLKPTRS ;
 int SPA_MINBLOCKSIZE ;
 int VERIFY (int ) ;
 int ZIO_COMPRESS_OFF ;
 int ZIO_FLAG_IO_ALLOCATING ;
 int ZIO_FLAG_NODATA ;
 int ZIO_GANG_CHILD_FLAGS (TYPE_2__*) ;
 int ZIO_INTERLOCK_PIPELINE ;
 scalar_t__ ZIO_PRIORITY_ASYNC_WRITE ;
 int * abd_get_from_buf (TYPE_4__*,int ) ;
 int * abd_get_offset (int ,int) ;
 int bzero (TYPE_4__*,int ) ;
 int metaslab_alloc (int *,TYPE_6__*,int ,int *,int,int,int *,int,int *,TYPE_2__*,size_t) ;
 int metaslab_class_throttle_reserve (TYPE_6__*,int,size_t,TYPE_2__*,int) ;
 int metaslab_class_throttle_unreserve (TYPE_6__*,int,size_t,TYPE_2__*) ;
 int spa_max_replication (int *) ;
 TYPE_6__* spa_normal_class (int *) ;
 int zfs_refcount_held (int *,TYPE_2__*) ;
 TYPE_5__* zio_gang_node_alloc (TYPE_5__**) ;
 int zio_nowait (TYPE_2__*) ;
 TYPE_2__* zio_rewrite (TYPE_2__*,int *,int,int *,int *,int ,int ,int *,scalar_t__,int ,int *) ;
 TYPE_2__* zio_write (TYPE_2__*,int *,int,int *,int *,int,int,TYPE_3__*,scalar_t__,int *,int *,int ,int *,scalar_t__,int ,int *) ;
 int zio_write_gang_done ;
 scalar_t__ zio_write_gang_member_ready ;

__attribute__((used)) static zio_t *
zio_write_gang_block(zio_t *pio)
{
 spa_t *spa = pio->io_spa;
 metaslab_class_t *mc = spa_normal_class(spa);
 blkptr_t *bp = pio->io_bp;
 zio_t *gio = pio->io_gang_leader;
 zio_t *zio;
 zio_gang_node_t *gn, **gnpp;
 zio_gbh_phys_t *gbh;
 abd_t *gbh_abd;
 uint64_t txg = pio->io_txg;
 uint64_t resid = pio->io_size;
 uint64_t lsize;
 int copies = gio->io_prop.zp_copies;
 int gbh_copies = MIN(copies + 1, spa_max_replication(spa));
 zio_prop_t zp;
 int error;
 boolean_t has_data = !(pio->io_flags & ZIO_FLAG_NODATA);

 int flags = METASLAB_HINTBP_FAVOR | METASLAB_GANG_HEADER;
 if (pio->io_flags & ZIO_FLAG_IO_ALLOCATING) {
  ASSERT(pio->io_priority == ZIO_PRIORITY_ASYNC_WRITE);
  ASSERT(has_data);

  flags |= METASLAB_ASYNC_ALLOC;
  VERIFY(zfs_refcount_held(&mc->mc_alloc_slots[pio->io_allocator],
      pio));
  VERIFY(metaslab_class_throttle_reserve(mc, gbh_copies - copies,
      pio->io_allocator, pio, flags));
 }

 error = metaslab_alloc(spa, mc, SPA_GANGBLOCKSIZE,
     bp, gbh_copies, txg, pio == gio ? ((void*)0) : gio->io_bp, flags,
     &pio->io_alloc_list, pio, pio->io_allocator);
 if (error) {
  if (pio->io_flags & ZIO_FLAG_IO_ALLOCATING) {
   ASSERT(pio->io_priority == ZIO_PRIORITY_ASYNC_WRITE);
   ASSERT(has_data);
   metaslab_class_throttle_unreserve(mc,
       gbh_copies - copies, pio->io_allocator, pio);
  }
  pio->io_error = error;
  return (pio);
 }

 if (pio == gio) {
  gnpp = &gio->io_gang_tree;
 } else {
  gnpp = pio->io_private;
  ASSERT(pio->io_ready == zio_write_gang_member_ready);
 }

 gn = zio_gang_node_alloc(gnpp);
 gbh = gn->gn_gbh;
 bzero(gbh, SPA_GANGBLOCKSIZE);
 gbh_abd = abd_get_from_buf(gbh, SPA_GANGBLOCKSIZE);




 zio = zio_rewrite(pio, spa, txg, bp, gbh_abd, SPA_GANGBLOCKSIZE,
     zio_write_gang_done, ((void*)0), pio->io_priority,
     ZIO_GANG_CHILD_FLAGS(pio), &pio->io_bookmark);




 for (int g = 0; resid != 0; resid -= lsize, g++) {
  lsize = P2ROUNDUP(resid / (SPA_GBH_NBLKPTRS - g),
      SPA_MINBLOCKSIZE);
  ASSERT(lsize >= SPA_MINBLOCKSIZE && lsize <= resid);

  zp.zp_checksum = gio->io_prop.zp_checksum;
  zp.zp_compress = ZIO_COMPRESS_OFF;
  zp.zp_type = DMU_OT_NONE;
  zp.zp_level = 0;
  zp.zp_copies = gio->io_prop.zp_copies;
  zp.zp_dedup = B_FALSE;
  zp.zp_dedup_verify = B_FALSE;
  zp.zp_nopwrite = B_FALSE;

  zio_t *cio = zio_write(zio, spa, txg, &gbh->zg_blkptr[g],
      has_data ? abd_get_offset(pio->io_abd, pio->io_size -
      resid) : ((void*)0), lsize, lsize, &zp,
      zio_write_gang_member_ready, ((void*)0), ((void*)0),
      zio_write_gang_done, &gn->gn_child[g], pio->io_priority,
      ZIO_GANG_CHILD_FLAGS(pio), &pio->io_bookmark);

  if (pio->io_flags & ZIO_FLAG_IO_ALLOCATING) {
   ASSERT(pio->io_priority == ZIO_PRIORITY_ASYNC_WRITE);
   ASSERT(has_data);






   VERIFY(metaslab_class_throttle_reserve(mc,
       zp.zp_copies, cio->io_allocator, cio, flags));
  }
  zio_nowait(cio);
 }




 pio->io_pipeline = ZIO_INTERLOCK_PIPELINE;

 zio_nowait(zio);

 return (pio);
}
