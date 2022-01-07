
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ magic; int error_string; } ;
struct archive_write_disk {TYPE_1__ archive; int stream; scalar_t__ stream_valid; struct archive_write_disk* uncompressed_buffer; struct archive_write_disk* compressed_buffer; struct archive_write_disk* resource_fork; struct archive_write_disk* decmpfs_header_p; int path_safe; int _name_data; int entry; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_ANY ;
 int ARCHIVE_STATE_FATAL ;
 int ARCHIVE_WRITE_DISK_MAGIC ;

 int __archive_clean (TYPE_1__*) ;
 int _archive_write_disk_close (TYPE_1__*) ;
 int archive_check_magic (struct archive*,int ,int,char*) ;
 int archive_entry_free (int ) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int archive_string_free (int *) ;
 int archive_write_disk_set_group_lookup (TYPE_1__*,int *,int *,int *) ;
 int archive_write_disk_set_user_lookup (TYPE_1__*,int *,int *,int *) ;
 int deflateEnd (int *) ;
 int free (struct archive_write_disk*) ;

__attribute__((used)) static int
_archive_write_disk_free(struct archive *_a)
{
 struct archive_write_disk *a;
 int ret;
 if (_a == ((void*)0))
  return (ARCHIVE_OK);
 archive_check_magic(_a, ARCHIVE_WRITE_DISK_MAGIC,
     ARCHIVE_STATE_ANY | ARCHIVE_STATE_FATAL, "archive_write_disk_free");
 a = (struct archive_write_disk *)_a;
 ret = _archive_write_disk_close(&a->archive);
 archive_write_disk_set_group_lookup(&a->archive, ((void*)0), ((void*)0), ((void*)0));
 archive_write_disk_set_user_lookup(&a->archive, ((void*)0), ((void*)0), ((void*)0));
 archive_entry_free(a->entry);
 archive_string_free(&a->_name_data);
 archive_string_free(&a->archive.error_string);
 archive_string_free(&a->path_safe);
 a->archive.magic = 0;
 __archive_clean(&a->archive);
 free(a->decmpfs_header_p);
 free(a->resource_fork);
 free(a->compressed_buffer);
 free(a->uncompressed_buffer);
 free(a);
 return (ret);
}
