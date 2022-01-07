
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct progress_data {struct archive_entry* entry; struct archive* archive; struct bsdtar* bsdtar; } ;
struct bsdtar {scalar_t__ verbose; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_file_count (struct archive*) ;
 int archive_filter_bytes (struct archive*,int) ;
 int fprintf (int ,char*,...) ;
 int need_report () ;
 int safe_fprintf (int ,char*,int ) ;
 int stderr ;
 char* tar_i64toa (int) ;

__attribute__((used)) static void
progress_func(void *cookie)
{
 struct progress_data *progress_data = (struct progress_data *)cookie;
 struct bsdtar *bsdtar = progress_data->bsdtar;
 struct archive *a = progress_data->archive;
 struct archive_entry *entry = progress_data->entry;
 uint64_t comp, uncomp;
 int compression;

 if (!need_report())
  return;

 if (bsdtar->verbose)
  fprintf(stderr, "\n");
 if (a != ((void*)0)) {
  comp = archive_filter_bytes(a, -1);
  uncomp = archive_filter_bytes(a, 0);
  if (comp > uncomp)
   compression = 0;
  else
   compression = (int)((uncomp - comp) * 100 / uncomp);
  fprintf(stderr,
      "In: %s bytes, compression %d%%;",
      tar_i64toa(comp), compression);
  fprintf(stderr, "  Out: %d files, %s bytes\n",
      archive_file_count(a), tar_i64toa(uncomp));
 }
 if (entry != ((void*)0)) {
  safe_fprintf(stderr, "Current: %s",
      archive_entry_pathname(entry));
  fprintf(stderr, " (%s bytes)\n",
      tar_i64toa(archive_entry_size(entry)));
 }
}
