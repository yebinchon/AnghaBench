
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int return_value; int bytes_per_block; int * passphrase; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int append_archive (struct bsdtar*,struct archive*,struct archive*) ;
 int archive_error_string (struct archive*) ;
 int archive_read_add_passphrase (struct archive*,int *) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 scalar_t__ archive_read_open_filename (struct archive*,char const*,int ) ;
 int archive_read_set_options (struct archive*,char*) ;
 int archive_read_set_passphrase_callback (struct archive*,struct bsdtar*,int *) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int lafe_errc (int,int ,char*,int ) ;
 int lafe_warnc (int ,char*,char const*,...) ;
 int passphrase_callback ;
 int set_reader_options (struct bsdtar*,struct archive*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
append_archive_filename(struct bsdtar *bsdtar, struct archive *a,
    const char *raw_filename)
{
 struct archive *ina;
 const char *filename = raw_filename;
 int rc;

 if (strcmp(filename, "-") == 0)
  filename = ((void*)0);

 ina = archive_read_new();
 archive_read_support_format_all(ina);
 archive_read_support_filter_all(ina);
 set_reader_options(bsdtar, ina);
 archive_read_set_options(ina, "mtree:checkfs");
 if (bsdtar->passphrase != ((void*)0))
  rc = archive_read_add_passphrase(a, bsdtar->passphrase);
 else
  rc = archive_read_set_passphrase_callback(ina, bsdtar,
   &passphrase_callback);
 if (rc != ARCHIVE_OK)
  lafe_errc(1, 0, "%s", archive_error_string(a));
 if (archive_read_open_filename(ina, filename,
     bsdtar->bytes_per_block)) {
  lafe_warnc(0, "%s", archive_error_string(ina));
  bsdtar->return_value = 1;
  return (0);
 }

 rc = append_archive(bsdtar, a, ina);

 if (rc != ARCHIVE_OK) {
  lafe_warnc(0, "Error reading archive %s: %s",
      raw_filename, archive_error_string(ina));
  bsdtar->return_value = 1;
 }
 archive_read_free(ina);

 return (rc);
}
