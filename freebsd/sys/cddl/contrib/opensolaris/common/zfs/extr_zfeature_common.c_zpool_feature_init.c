
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const spa_feature_t ;


 int const SPA_FEATURE_ASYNC_DESTROY ;
 int const SPA_FEATURE_BOOKMARKS ;

 int const SPA_FEATURE_EDONR ;
 int const SPA_FEATURE_EMBEDDED_DATA ;
 int const SPA_FEATURE_EMPTY_BPOBJ ;


 int const SPA_FEATURE_FS_SS_LIMIT ;
 int const SPA_FEATURE_HOLE_BIRTH ;
 int const SPA_FEATURE_LARGE_BLOCKS ;
 int const SPA_FEATURE_LARGE_DNODE ;
 int const SPA_FEATURE_LZ4_COMPRESS ;
 int const SPA_FEATURE_MULTI_VDEV_CRASH_DUMP ;

 int const SPA_FEATURE_OBSOLETE_COUNTS ;
 int const SPA_FEATURE_POOL_CHECKPOINT ;
 int const SPA_FEATURE_SHA512 ;
 int const SPA_FEATURE_SKEIN ;
 int const SPA_FEATURE_SPACEMAP_HISTOGRAM ;
 int const SPA_FEATURE_SPACEMAP_V2 ;
 int ZFEATURE_FLAG_ACTIVATE_ON_ENABLE ;
 int ZFEATURE_FLAG_MOS ;
 int ZFEATURE_FLAG_PER_DATASET ;
 int ZFEATURE_FLAG_READONLY_COMPAT ;
 int zfeature_register (int const,char*,char*,char*,int,int const*) ;

void
zpool_feature_init(void)
{
 zfeature_register(SPA_FEATURE_ASYNC_DESTROY,
     "com.delphix:async_destroy", "async_destroy",
     "Destroy filesystems asynchronously.",
     ZFEATURE_FLAG_READONLY_COMPAT, ((void*)0));

 zfeature_register(SPA_FEATURE_EMPTY_BPOBJ,
     "com.delphix:empty_bpobj", "empty_bpobj",
     "Snapshots use less space.",
     ZFEATURE_FLAG_READONLY_COMPAT, ((void*)0));

 zfeature_register(SPA_FEATURE_LZ4_COMPRESS,
     "org.illumos:lz4_compress", "lz4_compress",
     "LZ4 compression algorithm support.",
     ZFEATURE_FLAG_ACTIVATE_ON_ENABLE, ((void*)0));

 zfeature_register(SPA_FEATURE_MULTI_VDEV_CRASH_DUMP,
     "com.joyent:multi_vdev_crash_dump", "multi_vdev_crash_dump",
     "Crash dumps to multiple vdev pools.",
     0, ((void*)0));

 zfeature_register(SPA_FEATURE_SPACEMAP_HISTOGRAM,
     "com.delphix:spacemap_histogram", "spacemap_histogram",
     "Spacemaps maintain space histograms.",
     ZFEATURE_FLAG_READONLY_COMPAT, ((void*)0));

 zfeature_register(130,
     "com.delphix:enabled_txg", "enabled_txg",
     "Record txg at which a feature is enabled",
     ZFEATURE_FLAG_READONLY_COMPAT, ((void*)0));

 static spa_feature_t hole_birth_deps[] = { 130,
     128 };
 zfeature_register(SPA_FEATURE_HOLE_BIRTH,
     "com.delphix:hole_birth", "hole_birth",
     "Retain hole birth txg for more precise zfs send",
     ZFEATURE_FLAG_MOS | ZFEATURE_FLAG_ACTIVATE_ON_ENABLE,
     hole_birth_deps);

 zfeature_register(129,
     "com.delphix:extensible_dataset", "extensible_dataset",
     "Enhanced dataset functionality, used by other features.",
     0, ((void*)0));

 static const spa_feature_t bookmarks_deps[] = {
  129,
  128
 };
 zfeature_register(SPA_FEATURE_BOOKMARKS,
     "com.delphix:bookmarks", "bookmarks",
     "\"zfs bookmark\" command",
     ZFEATURE_FLAG_READONLY_COMPAT, bookmarks_deps);

 static const spa_feature_t filesystem_limits_deps[] = {
     129,
     128
 };
 zfeature_register(SPA_FEATURE_FS_SS_LIMIT,
     "com.joyent:filesystem_limits", "filesystem_limits",
     "Filesystem and snapshot limits.",
     ZFEATURE_FLAG_READONLY_COMPAT, filesystem_limits_deps);

 zfeature_register(SPA_FEATURE_EMBEDDED_DATA,
     "com.delphix:embedded_data", "embedded_data",
     "Blocks which compress very well use even less space.",
     ZFEATURE_FLAG_MOS | ZFEATURE_FLAG_ACTIVATE_ON_ENABLE,
     ((void*)0));

 zfeature_register(SPA_FEATURE_POOL_CHECKPOINT,
     "com.delphix:zpool_checkpoint", "zpool_checkpoint",
     "Pool state can be checkpointed, allowing rewind later.",
     ZFEATURE_FLAG_READONLY_COMPAT, ((void*)0));

 zfeature_register(SPA_FEATURE_SPACEMAP_V2,
     "com.delphix:spacemap_v2", "spacemap_v2",
     "Space maps representing large segments are more efficient.",
     ZFEATURE_FLAG_READONLY_COMPAT | ZFEATURE_FLAG_ACTIVATE_ON_ENABLE,
     ((void*)0));

 static const spa_feature_t large_blocks_deps[] = {
  129,
  128
 };
 zfeature_register(SPA_FEATURE_LARGE_BLOCKS,
     "org.open-zfs:large_blocks", "large_blocks",
     "Support for blocks larger than 128KB.",
     ZFEATURE_FLAG_PER_DATASET, large_blocks_deps);

 {
 static const spa_feature_t large_dnode_deps[] = {
  129,
  128
 };
 zfeature_register(SPA_FEATURE_LARGE_DNODE,
     "org.zfsonlinux:large_dnode", "large_dnode",
     "Variable on-disk size of dnodes.",
     ZFEATURE_FLAG_PER_DATASET, large_dnode_deps);
 }

 static const spa_feature_t sha512_deps[] = {
  129,
  128
 };
 zfeature_register(SPA_FEATURE_SHA512,
     "org.illumos:sha512", "sha512",
     "SHA-512/256 hash algorithm.",
     ZFEATURE_FLAG_PER_DATASET, sha512_deps);

 static const spa_feature_t skein_deps[] = {
  129,
  128
 };
 zfeature_register(SPA_FEATURE_SKEIN,
     "org.illumos:skein", "skein",
     "Skein hash algorithm.",
     ZFEATURE_FLAG_PER_DATASET, skein_deps);
 zfeature_register(131,
     "com.delphix:device_removal", "device_removal",
     "Top-level vdevs can be removed, reducing logical pool size.",
     ZFEATURE_FLAG_MOS, ((void*)0));

 static const spa_feature_t obsolete_counts_deps[] = {
  129,
  131,
  128
 };
 zfeature_register(SPA_FEATURE_OBSOLETE_COUNTS,
     "com.delphix:obsolete_counts", "obsolete_counts",
     "Reduce memory used by removed devices when their blocks are "
     "freed or remapped.",
     ZFEATURE_FLAG_READONLY_COMPAT, obsolete_counts_deps);
}
