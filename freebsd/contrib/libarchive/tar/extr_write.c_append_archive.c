
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int flags; int verbose; int matching; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int OPTFLAG_INTERACTIVE ;
 int archive_entry_pathname (struct archive_entry*) ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 char* archive_error_string (struct archive*) ;
 scalar_t__ archive_match_excluded (int ,struct archive_entry*) ;
 int archive_read_data_skip (struct archive*) ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 scalar_t__ copy_file_data_block (struct bsdtar*,struct archive*,struct archive*,struct archive_entry*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int lafe_warnc (int ,char*,int ,char*) ;
 int list_item_verbose (struct bsdtar*,int ,struct archive_entry*) ;
 scalar_t__ need_report () ;
 int report_write (struct bsdtar*,struct archive*,struct archive_entry*,int ) ;
 int safe_fprintf (int ,char*,...) ;
 int stderr ;
 int yes (char*,int ) ;

__attribute__((used)) static int
append_archive(struct bsdtar *bsdtar, struct archive *a, struct archive *ina)
{
 struct archive_entry *in_entry;
 int e;

 while (ARCHIVE_OK == (e = archive_read_next_header(ina, &in_entry))) {
  if (archive_match_excluded(bsdtar->matching, in_entry))
   continue;
  if ((bsdtar->flags & OPTFLAG_INTERACTIVE) &&
      !yes("copy '%s'", archive_entry_pathname(in_entry)))
   continue;
  if (bsdtar->verbose > 1) {
   safe_fprintf(stderr, "a ");
   list_item_verbose(bsdtar, stderr, in_entry);
  } else if (bsdtar->verbose > 0)
   safe_fprintf(stderr, "a %s",
       archive_entry_pathname(in_entry));
  if (need_report())
   report_write(bsdtar, a, in_entry, 0);

  e = archive_write_header(a, in_entry);
  if (e != ARCHIVE_OK) {
   if (!bsdtar->verbose)
    lafe_warnc(0, "%s: %s",
        archive_entry_pathname(in_entry),
        archive_error_string(a));
   else
    fprintf(stderr, ": %s", archive_error_string(a));
  }
  if (e == ARCHIVE_FATAL)
   exit(1);

  if (e >= ARCHIVE_WARN) {
   if (archive_entry_size(in_entry) == 0)
    archive_read_data_skip(ina);
   else if (copy_file_data_block(bsdtar, a, ina, in_entry))
    exit(1);
  }

  if (bsdtar->verbose)
   fprintf(stderr, "\n");
 }

 return (e == ARCHIVE_EOF ? ARCHIVE_OK : e);
}
