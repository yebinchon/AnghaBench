
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int flags; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int OPTFLAG_INTERACTIVE ;
 int OPTFLAG_NO_SUBDIRS ;
 int archive_entry_pathname (struct archive_entry*) ;
 scalar_t__ archive_read_disk_can_descend (struct archive*) ;
 int archive_read_disk_descend (struct archive*) ;
 int yes (char*,int ) ;

__attribute__((used)) static int
metadata_filter(struct archive *a, void *_data, struct archive_entry *entry)
{
 struct bsdtar *bsdtar = (struct bsdtar *)_data;
 if ((bsdtar->flags & OPTFLAG_INTERACTIVE) &&
     !yes("add '%s'", archive_entry_pathname(entry)))
  return (0);


 if (((bsdtar->flags & OPTFLAG_NO_SUBDIRS) == 0) &&
     archive_read_disk_can_descend(a))
  archive_read_disk_descend(a);

 return (1);
}
