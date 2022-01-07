
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ magic; int error_string; } ;
struct archive_read_disk {TYPE_1__ archive; int entry; int * lookup_uname_data; int (* cleanup_uname ) (int *) ;int * lookup_gname_data; int (* cleanup_gname ) (int *) ;int tree; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 scalar_t__ ARCHIVE_STATE_CLOSED ;
 int ARCHIVE_STATE_FATAL ;
 int __archive_clean (TYPE_1__*) ;
 int _archive_read_close (TYPE_1__*) ;
 int archive_check_magic (struct archive*,int ,int,char*) ;
 int archive_entry_free (int ) ;
 int archive_string_free (int *) ;
 int free (struct archive_read_disk*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int tree_free (int ) ;

__attribute__((used)) static int
_archive_read_free(struct archive *_a)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 int r;

 if (_a == ((void*)0))
  return (ARCHIVE_OK);
 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_ANY | ARCHIVE_STATE_FATAL, "archive_read_free");

 if (a->archive.state != ARCHIVE_STATE_CLOSED)
  r = _archive_read_close(&a->archive);
 else
  r = ARCHIVE_OK;

 tree_free(a->tree);
 if (a->cleanup_gname != ((void*)0) && a->lookup_gname_data != ((void*)0))
  (a->cleanup_gname)(a->lookup_gname_data);
 if (a->cleanup_uname != ((void*)0) && a->lookup_uname_data != ((void*)0))
  (a->cleanup_uname)(a->lookup_uname_data);
 archive_string_free(&a->archive.error_string);
 archive_entry_free(a->entry);
 a->archive.magic = 0;
 __archive_clean(&a->archive);
 free(a);
 return (r);
}
