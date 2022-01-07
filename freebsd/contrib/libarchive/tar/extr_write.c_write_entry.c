
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int verbose; int diskreader; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_entry_pathname (struct archive_entry*) ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 char* archive_error_string (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 scalar_t__ copy_file_data_block (struct bsdtar*,struct archive*,int ,struct archive_entry*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int lafe_warnc (int ,char*,char*,...) ;
 int list_item_verbose (struct bsdtar*,int ,struct archive_entry*) ;
 int safe_fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
write_entry(struct bsdtar *bsdtar, struct archive *a,
    struct archive_entry *entry)
{
 int e;

 e = archive_write_header(a, entry);
 if (e != ARCHIVE_OK) {
  if (bsdtar->verbose > 1) {
   safe_fprintf(stderr, "a ");
   list_item_verbose(bsdtar, stderr, entry);
   lafe_warnc(0, ": %s", archive_error_string(a));
  } else if (bsdtar->verbose > 0) {
   lafe_warnc(0, "%s: %s",
       archive_entry_pathname(entry),
       archive_error_string(a));
  } else
   fprintf(stderr, ": %s", archive_error_string(a));
 }

 if (e == ARCHIVE_FATAL)
  exit(1);







 if (e >= ARCHIVE_WARN && archive_entry_size(entry) > 0) {
  if (copy_file_data_block(bsdtar, a, bsdtar->diskreader, entry))
   exit(1);
 }
}
