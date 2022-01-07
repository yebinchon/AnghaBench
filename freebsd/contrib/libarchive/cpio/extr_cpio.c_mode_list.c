
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio {int quiet; scalar_t__ verbose; int matching; int bytes_per_block; int filename; int * passphrase; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int int64_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 char* archive_entry_pathname (struct archive_entry*) ;
 int archive_errno (struct archive*) ;
 int archive_error_string (struct archive*) ;
 int archive_filter_bytes (struct archive*,int ) ;
 scalar_t__ archive_match_path_excluded (int ,struct archive_entry*) ;
 int archive_read_add_passphrase (struct archive*,int *) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 scalar_t__ archive_read_open_filename (struct archive*,int ,int ) ;
 int archive_read_set_passphrase_callback (struct archive*,struct cpio*,int *) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int lafe_errc (int,int ,char*,...) ;
 int list_item_verbose (struct cpio*,struct archive_entry*) ;
 int passphrase_callback ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
mode_list(struct cpio *cpio)
{
 struct archive *a;
 struct archive_entry *entry;
 int r;

 a = archive_read_new();
 if (a == ((void*)0))
  lafe_errc(1, 0, "Couldn't allocate archive object");
 archive_read_support_filter_all(a);
 archive_read_support_format_all(a);
 if (cpio->passphrase != ((void*)0))
  r = archive_read_add_passphrase(a, cpio->passphrase);
 else
  r = archive_read_set_passphrase_callback(a, cpio,
   &passphrase_callback);
 if (r != ARCHIVE_OK)
  lafe_errc(1, 0, "%s", archive_error_string(a));

 if (archive_read_open_filename(a, cpio->filename,
     cpio->bytes_per_block))
  lafe_errc(1, archive_errno(a),
      "%s", archive_error_string(a));
 for (;;) {
  r = archive_read_next_header(a, &entry);
  if (r == ARCHIVE_EOF)
   break;
  if (r != ARCHIVE_OK) {
   lafe_errc(1, archive_errno(a),
       "%s", archive_error_string(a));
  }
  if (archive_match_path_excluded(cpio->matching, entry))
   continue;
  if (cpio->verbose)
   list_item_verbose(cpio, entry);
  else
   fprintf(stdout, "%s\n", archive_entry_pathname(entry));
 }
 r = archive_read_close(a);
 if (r != ARCHIVE_OK)
  lafe_errc(1, 0, "%s", archive_error_string(a));
 if (!cpio->quiet) {
  int64_t blocks = (archive_filter_bytes(a, 0) + 511)
         / 512;
  fprintf(stderr, "%lu %s\n", (unsigned long)blocks,
      blocks == 1 ? "block" : "blocks");
 }
 archive_read_free(a);
 exit(0);
}
