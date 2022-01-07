
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int filename; int * passphrase; int cset; int bytes_in_last_block; int bytes_per_block; int * names_from_file; int ** argv; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 char const* archive_error_string (struct archive*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_filename (struct archive*,int ) ;
 int archive_write_set_bytes_in_last_block (struct archive*,int ) ;
 int archive_write_set_bytes_per_block (struct archive*,int ) ;
 int archive_write_set_format_by_name (struct archive*,char*) ;
 int archive_write_set_format_pax_restricted (struct archive*) ;
 int archive_write_set_passphrase (struct archive*,int *) ;
 int archive_write_set_passphrase_callback (struct archive*,struct bsdtar*,int *) ;
 char* cset_get_format (int ) ;
 int cset_set_format (int ,char*) ;
 int cset_write_add_filters (int ,struct archive*,void const**) ;
 int fprintf (int ,char*,char*,char const*) ;
 int lafe_errc (int,int ,char*,...) ;
 int passphrase_callback ;
 int set_writer_options (struct bsdtar*,struct archive*) ;
 int stderr ;
 int usage () ;
 int write_archive (struct archive*,struct bsdtar*) ;

void
tar_mode_c(struct bsdtar *bsdtar)
{
 struct archive *a;
 const void *filter_name;
 int r;

 if (*bsdtar->argv == ((void*)0) && bsdtar->names_from_file == ((void*)0))
  lafe_errc(1, 0, "no files or directories specified");

 a = archive_write_new();


 if (cset_get_format(bsdtar->cset) == ((void*)0)) {
  r = archive_write_set_format_pax_restricted(a);
  cset_set_format(bsdtar->cset, "pax restricted");
 } else {
  r = archive_write_set_format_by_name(a,
   cset_get_format(bsdtar->cset));
 }
 if (r != ARCHIVE_OK) {
  fprintf(stderr, "Can't use format %s: %s\n",
      cset_get_format(bsdtar->cset),
      archive_error_string(a));
  usage();
 }

 archive_write_set_bytes_per_block(a, bsdtar->bytes_per_block);
 archive_write_set_bytes_in_last_block(a, bsdtar->bytes_in_last_block);

 r = cset_write_add_filters(bsdtar->cset, a, &filter_name);
 if (r < ARCHIVE_WARN) {
  lafe_errc(1, 0, "Unsupported compression option --%s",
      (const char *)filter_name);
 }

 set_writer_options(bsdtar, a);
 if (bsdtar->passphrase != ((void*)0))
  r = archive_write_set_passphrase(a, bsdtar->passphrase);
 else
  r = archive_write_set_passphrase_callback(a, bsdtar,
   &passphrase_callback);
 if (r != ARCHIVE_OK)
  lafe_errc(1, 0, "%s", archive_error_string(a));
 if (ARCHIVE_OK != archive_write_open_filename(a, bsdtar->filename))
  lafe_errc(1, 0, "%s", archive_error_string(a));
 write_archive(a, bsdtar);
}
