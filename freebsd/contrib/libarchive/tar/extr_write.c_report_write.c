
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bsdtar {scalar_t__ verbose; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int int64_t ;


 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_file_count (struct archive*) ;
 int archive_filter_bytes (struct archive*,int) ;
 int fprintf (int ,char*,...) ;
 int safe_fprintf (int ,char*,int ,char*) ;
 int stderr ;
 char* tar_i64toa (int) ;

__attribute__((used)) static void
report_write(struct bsdtar *bsdtar, struct archive *a,
    struct archive_entry *entry, int64_t progress)
{
 uint64_t comp, uncomp;
 int compression;

 if (bsdtar->verbose)
  fprintf(stderr, "\n");
 comp = archive_filter_bytes(a, -1);
 uncomp = archive_filter_bytes(a, 0);
 fprintf(stderr, "In: %d files, %s bytes;",
     archive_file_count(a), tar_i64toa(uncomp));
 if (comp >= uncomp)
  compression = 0;
 else
  compression = (int)((uncomp - comp) * 100 / uncomp);
 fprintf(stderr,
     " Out: %s bytes, compression %d%%\n",
     tar_i64toa(comp), compression);

 safe_fprintf(stderr, "Current: %s (%s",
     archive_entry_pathname(entry),
     tar_i64toa(progress));
 fprintf(stderr, "/%s bytes)\n",
     tar_i64toa(archive_entry_size(entry)));
}
