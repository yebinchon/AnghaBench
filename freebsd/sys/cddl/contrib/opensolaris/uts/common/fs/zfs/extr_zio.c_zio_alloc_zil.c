
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int zio_alloc_list_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int spa_alloc_count; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int BP_SET_BYTEORDER (int *,int ) ;
 int BP_SET_CHECKSUM (int *,int ) ;
 int BP_SET_COMPRESS (int *,int ) ;
 int BP_SET_DEDUP (int *,int ) ;
 int BP_SET_LEVEL (int *,int ) ;
 int BP_SET_LSIZE (int *,scalar_t__) ;
 int BP_SET_PSIZE (int *,scalar_t__) ;
 int BP_SET_TYPE (int *,int ) ;
 int DMU_OT_INTENT_LOG ;
 int FALSE ;
 int METASLAB_HINTBP_AVOID ;
 scalar_t__ SPA_VERSION_SLIM_ZIL ;
 int TRUE ;
 int ZFS_HOST_BYTEORDER ;
 int ZIO_CHECKSUM_ZILOG ;
 int ZIO_CHECKSUM_ZILOG2 ;
 int ZIO_COMPRESS_OFF ;
 int cityhash4 (int ,int ,int ,scalar_t__) ;
 int metaslab_alloc (TYPE_1__*,int ,scalar_t__,int *,int,scalar_t__,int *,int ,int *,int *,int) ;
 int metaslab_trace_fini (int *) ;
 int metaslab_trace_init (int *) ;
 int spa_log_class (TYPE_1__*) ;
 int spa_name (TYPE_1__*) ;
 int spa_normal_class (TYPE_1__*) ;
 scalar_t__ spa_syncing_txg (TYPE_1__*) ;
 scalar_t__ spa_version (TYPE_1__*) ;
 int zfs_dbgmsg (char*,int ,scalar_t__,int) ;

int
zio_alloc_zil(spa_t *spa, uint64_t objset, uint64_t txg, blkptr_t *new_bp,
    blkptr_t *old_bp, uint64_t size, boolean_t *slog)
{
 int error = 1;
 zio_alloc_list_t io_alloc_list;

 ASSERT(txg > spa_syncing_txg(spa));

 metaslab_trace_init(&io_alloc_list);






 error = metaslab_alloc(spa, spa_log_class(spa), size, new_bp, 1,
     txg, old_bp, METASLAB_HINTBP_AVOID, &io_alloc_list, ((void*)0),
     cityhash4(0, 0, 0, objset) % spa->spa_alloc_count);
 if (error == 0) {
  *slog = TRUE;
 } else {
  error = metaslab_alloc(spa, spa_normal_class(spa), size,
      new_bp, 1, txg, old_bp, METASLAB_HINTBP_AVOID,
      &io_alloc_list, ((void*)0), cityhash4(0, 0, 0, objset) %
      spa->spa_alloc_count);
  if (error == 0)
   *slog = FALSE;
 }
 metaslab_trace_fini(&io_alloc_list);

 if (error == 0) {
  BP_SET_LSIZE(new_bp, size);
  BP_SET_PSIZE(new_bp, size);
  BP_SET_COMPRESS(new_bp, ZIO_COMPRESS_OFF);
  BP_SET_CHECKSUM(new_bp,
      spa_version(spa) >= SPA_VERSION_SLIM_ZIL
      ? ZIO_CHECKSUM_ZILOG2 : ZIO_CHECKSUM_ZILOG);
  BP_SET_TYPE(new_bp, DMU_OT_INTENT_LOG);
  BP_SET_LEVEL(new_bp, 0);
  BP_SET_DEDUP(new_bp, 0);
  BP_SET_BYTEORDER(new_bp, ZFS_HOST_BYTEORDER);
 } else {
  zfs_dbgmsg("%s: zil block allocation failure: "
      "size %llu, error %d", spa_name(spa), size, error);
 }

 return (error);
}
