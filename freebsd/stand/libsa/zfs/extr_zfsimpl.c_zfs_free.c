
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;
 void* zfs_temp_ptr ;

__attribute__((used)) static void
zfs_free(void *ptr, size_t size)
{

 zfs_temp_ptr -= size;
 if (zfs_temp_ptr != ptr) {
  panic("ZFS: zfs_alloc()/zfs_free() mismatch");
 }
}
