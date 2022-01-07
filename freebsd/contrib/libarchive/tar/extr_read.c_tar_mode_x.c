
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int flags; int return_value; int matching; int extract_flags; } ;
struct archive {int dummy; } ;


 int ENOMEM ;
 int OPTFLAG_NUMERIC_OWNER ;
 struct archive* archive_write_disk_new () ;
 int archive_write_disk_set_options (struct archive*,int ) ;
 int archive_write_disk_set_standard_lookup (struct archive*) ;
 int archive_write_free (struct archive*) ;
 int lafe_errc (int,int ,char*) ;
 int read_archive (struct bsdtar*,char,struct archive*) ;
 scalar_t__ unmatched_inclusions_warn (int ,char*) ;

void
tar_mode_x(struct bsdtar *bsdtar)
{
 struct archive *writer;

 writer = archive_write_disk_new();
 if (writer == ((void*)0))
  lafe_errc(1, ENOMEM, "Cannot allocate disk writer object");
 if ((bsdtar->flags & OPTFLAG_NUMERIC_OWNER) == 0)
  archive_write_disk_set_standard_lookup(writer);
 archive_write_disk_set_options(writer, bsdtar->extract_flags);

 read_archive(bsdtar, 'x', writer);

 if (unmatched_inclusions_warn(bsdtar->matching,
     "Not found in archive") != 0)
  bsdtar->return_value = 1;
 archive_write_free(writer);
}
