
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int dummy; } ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
set_mac_metadata(struct archive_write_disk *a, const char *pathname,
   const void *metadata, size_t metadata_size)
{
 (void)a;
 (void)pathname;
 (void)metadata;
 (void)metadata_size;
 return (ARCHIVE_OK);
}
