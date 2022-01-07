
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scan_io_t ;


 int fill_weight ;
 int kmem_cache_create (char*,int,int ,int *,int *,int *,int *,int *,int ) ;
 int sio_cache ;
 int zfs_scan_fill_weight ;

void
scan_init(void)
{
 fill_weight = zfs_scan_fill_weight;

 sio_cache = kmem_cache_create("sio_cache",
     sizeof (scan_io_t), 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
}
