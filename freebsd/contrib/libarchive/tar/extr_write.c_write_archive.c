
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int buff_size; int symlink_mode; char** argv; int return_value; int flags; struct archive* diskreader; int * resolver; int * buff; int * names_from_file; int readdisk_flags; int * matching; scalar_t__ bytes_per_block; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int OPTFLAG_TOTALS ;
 scalar_t__ append_archive_filename (struct bsdtar*,struct archive*,char const*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_linkify (int *,struct archive_entry**,struct archive_entry**) ;
 int archive_entry_linkresolver_free (int *) ;
 int * archive_entry_linkresolver_new () ;
 int archive_entry_linkresolver_set_strategy (int *,int ) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_sourcepath (struct archive_entry*) ;
 int archive_errno (struct archive*) ;
 char* archive_error_string (struct archive*) ;
 int archive_filter_bytes (struct archive*,int) ;
 int archive_format (struct archive*) ;
 int archive_names_from_file (struct bsdtar*,struct archive*) ;
 int archive_read_close (struct archive*) ;
 struct archive* archive_read_disk_new () ;
 int archive_read_disk_open (struct archive*,int ) ;
 int archive_read_disk_set_behavior (struct archive*,int ) ;
 int archive_read_disk_set_matching (struct archive*,int *,int *,struct bsdtar*) ;
 int archive_read_disk_set_metadata_filter_callback (struct archive*,int *,struct bsdtar*) ;
 int archive_read_disk_set_standard_lookup (struct archive*) ;
 int archive_read_disk_set_symlink_hybrid (struct archive*) ;
 int archive_read_disk_set_symlink_logical (struct archive*) ;
 int archive_read_disk_set_symlink_physical (struct archive*) ;
 int archive_read_free (struct archive*) ;
 int archive_read_next_header2 (struct archive*,struct archive_entry*) ;
 scalar_t__ archive_write_close (struct archive*) ;
 int archive_write_free (struct archive*) ;
 int do_chdir (struct bsdtar*) ;
 int * excluded_callback ;
 int fprintf (int ,char*,char*) ;
 int free (int *) ;
 int lafe_errc (int,int ,char*) ;
 int lafe_warnc (int ,char*,...) ;
 int * malloc (int) ;
 int * metadata_filter ;
 int set_chdir (struct bsdtar*,char const*) ;
 int stderr ;
 char* tar_i64toa (int ) ;
 int write_file (struct bsdtar*,struct archive*,struct archive_entry*) ;
 int write_hierarchy (struct bsdtar*,struct archive*,char const*) ;

__attribute__((used)) static void
write_archive(struct archive *a, struct bsdtar *bsdtar)
{
 const char *arg;
 struct archive_entry *entry, *sparse_entry;


 bsdtar->buff_size = 64 * 1024;
 while (bsdtar->buff_size < (size_t)bsdtar->bytes_per_block)
   bsdtar->buff_size *= 2;

 bsdtar->buff_size += 16 * 1024;


 if ((bsdtar->buff = malloc(bsdtar->buff_size)) == ((void*)0))
  lafe_errc(1, 0, "cannot allocate memory");

 if ((bsdtar->resolver = archive_entry_linkresolver_new()) == ((void*)0))
  lafe_errc(1, 0, "cannot create link resolver");
 archive_entry_linkresolver_set_strategy(bsdtar->resolver,
     archive_format(a));


 if ((bsdtar->diskreader = archive_read_disk_new()) == ((void*)0))
  lafe_errc(1, 0, "Cannot create read_disk object");

 switch (bsdtar->symlink_mode) {
 case 'H':
  archive_read_disk_set_symlink_hybrid(bsdtar->diskreader);
  break;
 case 'L':
  archive_read_disk_set_symlink_logical(bsdtar->diskreader);
  break;
 default:
  archive_read_disk_set_symlink_physical(bsdtar->diskreader);
  break;
 }

 archive_read_disk_set_matching(bsdtar->diskreader,
     bsdtar->matching, excluded_callback, bsdtar);
 archive_read_disk_set_metadata_filter_callback(
     bsdtar->diskreader, metadata_filter, bsdtar);

 archive_read_disk_set_behavior(bsdtar->diskreader,
     bsdtar->readdisk_flags);
 archive_read_disk_set_standard_lookup(bsdtar->diskreader);

 if (bsdtar->names_from_file != ((void*)0))
  archive_names_from_file(bsdtar, a);

 while (*bsdtar->argv) {
  arg = *bsdtar->argv;
  if (arg[0] == '-' && arg[1] == 'C') {
   arg += 2;
   if (*arg == '\0') {
    bsdtar->argv++;
    arg = *bsdtar->argv;
    if (arg == ((void*)0)) {
     lafe_warnc(0, "%s",
         "Missing argument for -C");
     bsdtar->return_value = 1;
     goto cleanup;
    }
    if (*arg == '\0') {
     lafe_warnc(0,
         "Meaningless argument for -C: ''");
     bsdtar->return_value = 1;
     goto cleanup;
    }
   }
   set_chdir(bsdtar, arg);
  } else {
   if (*arg != '/')
    do_chdir(bsdtar);
   if (*arg == '@') {
    if (append_archive_filename(bsdtar, a,
        arg + 1) != 0)
     break;
   } else
    write_hierarchy(bsdtar, a, arg);
  }
  bsdtar->argv++;
 }

 archive_read_disk_set_matching(bsdtar->diskreader, ((void*)0), ((void*)0), ((void*)0));
 archive_read_disk_set_metadata_filter_callback(
     bsdtar->diskreader, ((void*)0), ((void*)0));
 entry = ((void*)0);
 archive_entry_linkify(bsdtar->resolver, &entry, &sparse_entry);
 while (entry != ((void*)0)) {
  int r;
  struct archive_entry *entry2;
  struct archive *disk = bsdtar->diskreader;
  r = archive_read_disk_open(disk,
   archive_entry_sourcepath(entry));
  if (r != ARCHIVE_OK) {
   lafe_warnc(archive_errno(disk),
       "%s", archive_error_string(disk));
   bsdtar->return_value = 1;
   goto next_entry;
  }






  entry2 = archive_entry_new();
  r = archive_read_next_header2(disk, entry2);
  archive_entry_free(entry2);
  if (r != ARCHIVE_OK) {
   lafe_warnc(archive_errno(disk),
       "%s", archive_error_string(disk));
   if (r == ARCHIVE_FATAL)
    bsdtar->return_value = 1;
   archive_read_close(disk);
   goto next_entry;
  }

  write_file(bsdtar, a, entry);
  archive_read_close(disk);
next_entry:
  archive_entry_free(entry);
  entry = ((void*)0);
  archive_entry_linkify(bsdtar->resolver, &entry, &sparse_entry);
 }

 if (archive_write_close(a)) {
  lafe_warnc(0, "%s", archive_error_string(a));
  bsdtar->return_value = 1;
 }

cleanup:

 free(bsdtar->buff);
 archive_entry_linkresolver_free(bsdtar->resolver);
 bsdtar->resolver = ((void*)0);
 archive_read_free(bsdtar->diskreader);
 bsdtar->diskreader = ((void*)0);

 if (bsdtar->flags & OPTFLAG_TOTALS) {
  fprintf(stderr, "Total bytes written: %s\n",
      tar_i64toa(archive_filter_bytes(a, -1)));
 }

 archive_write_free(a);
}
