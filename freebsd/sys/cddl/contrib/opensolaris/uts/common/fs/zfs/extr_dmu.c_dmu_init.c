
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abd_init () ;
 int arc_init () ;
 int dbuf_init () ;
 int dmu_objset_init () ;
 int dnode_init () ;
 int l2arc_init () ;
 int sa_cache_init () ;
 int xuio_stat_init () ;
 int zfetch_init () ;
 int zfs_dbgmsg_init () ;
 int zio_compress_init () ;

void
dmu_init(void)
{
 abd_init();
 zfs_dbgmsg_init();
 sa_cache_init();
 xuio_stat_init();
 dmu_objset_init();
 dnode_init();
 zfetch_init();
 zio_compress_init();
 l2arc_init();
 arc_init();
 dbuf_init();
}
