
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct archive_read_disk {int flags; TYPE_1__ archive; int * tree; int symlink_mode; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READDISK_RESTORE_ATIME ;
 int ARCHIVE_STATE_FATAL ;
 int ARCHIVE_STATE_HEADER ;
 int ENOMEM ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int * tree_open (char const*,int ,int) ;
 int * tree_reopen (int *,char const*,int) ;

__attribute__((used)) static int
_archive_read_disk_open(struct archive *_a, const char *pathname)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;

 if (a->tree != ((void*)0))
  a->tree = tree_reopen(a->tree, pathname,
      a->flags & ARCHIVE_READDISK_RESTORE_ATIME);
 else
  a->tree = tree_open(pathname, a->symlink_mode,
      a->flags & ARCHIVE_READDISK_RESTORE_ATIME);
 if (a->tree == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate tar data");
  a->archive.state = ARCHIVE_STATE_FATAL;
  return (ARCHIVE_FATAL);
 }
 a->archive.state = ARCHIVE_STATE_HEADER;

 return (ARCHIVE_OK);
}
