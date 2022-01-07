
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int fd; int filename; int cset; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int int64_t ;


 scalar_t__ ARCHIVE_FILTER_NONE ;
 int ARCHIVE_FORMAT_BASE_MASK ;
 int ARCHIVE_FORMAT_EMPTY ;
 int ARCHIVE_FORMAT_TAR_PAX_RESTRICTED ;
 int ARCHIVE_OK ;
 int O_BINARY ;
 int O_CREAT ;
 int O_RDWR ;
 int SEEK_SET ;
 int archive_errno (struct archive*) ;
 int archive_error_string (struct archive*) ;
 scalar_t__ archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_free (struct archive*) ;
 int archive_read_header_position (struct archive*) ;
 struct archive* archive_read_new () ;
 scalar_t__ archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_fd (struct archive*,int,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_empty (struct archive*) ;
 int archive_read_support_format_gnutar (struct archive*) ;
 int archive_read_support_format_tar (struct archive*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_fd (struct archive*,int) ;
 int archive_write_set_format (struct archive*,int) ;
 int archive_write_set_format_by_name (struct archive*,int *) ;
 int close (int) ;
 int * cset_get_format (int ) ;
 int errno ;
 int lafe_errc (int,int ,char*,...) ;
 scalar_t__ lseek (int,int ,int ) ;
 void* open (int ,int,...) ;
 int set_reader_options (struct bsdtar*,struct archive*) ;
 int set_writer_options (struct bsdtar*,struct archive*) ;
 int test_for_append (struct bsdtar*) ;
 int write_archive (struct archive*,struct bsdtar*) ;

void
tar_mode_r(struct bsdtar *bsdtar)
{
 int64_t end_offset;
 int format;
 struct archive *a;
 struct archive_entry *entry;
 int r;


 test_for_append(bsdtar);

 format = ARCHIVE_FORMAT_TAR_PAX_RESTRICTED;




 bsdtar->fd = open(bsdtar->filename, O_RDWR | O_CREAT | O_BINARY, 0666);

 if (bsdtar->fd < 0)
  lafe_errc(1, errno,
      "Cannot open %s", bsdtar->filename);

 a = archive_read_new();
 archive_read_support_filter_all(a);
 archive_read_support_format_empty(a);
 archive_read_support_format_tar(a);
 archive_read_support_format_gnutar(a);
 set_reader_options(bsdtar, a);
 r = archive_read_open_fd(a, bsdtar->fd, 10240);
 if (r != ARCHIVE_OK)
  lafe_errc(1, archive_errno(a),
      "Can't read archive %s: %s", bsdtar->filename,
      archive_error_string(a));
 while (0 == archive_read_next_header(a, &entry)) {
  if (archive_filter_code(a, 0) != ARCHIVE_FILTER_NONE) {
   archive_read_free(a);
   close(bsdtar->fd);
   lafe_errc(1, 0,
       "Cannot append to compressed archive.");
  }

  format = archive_format(a);
 }

 end_offset = archive_read_header_position(a);
 archive_read_free(a);


 a = archive_write_new();
 if (cset_get_format(bsdtar->cset) != ((void*)0)) {

  archive_write_set_format_by_name(a,
      cset_get_format(bsdtar->cset));

  format &= ARCHIVE_FORMAT_BASE_MASK;
  if (format != (int)(archive_format(a) & ARCHIVE_FORMAT_BASE_MASK)
      && format != ARCHIVE_FORMAT_EMPTY) {
   lafe_errc(1, 0,
       "Format %s is incompatible with the archive %s.",
       cset_get_format(bsdtar->cset), bsdtar->filename);
  }
 } else {




  if (format == ARCHIVE_FORMAT_EMPTY)
   format = ARCHIVE_FORMAT_TAR_PAX_RESTRICTED;
  archive_write_set_format(a, format);
 }
 if (lseek(bsdtar->fd, end_offset, SEEK_SET) < 0)
  lafe_errc(1, errno, "Could not seek to archive end");
 set_writer_options(bsdtar, a);
 if (ARCHIVE_OK != archive_write_open_fd(a, bsdtar->fd))
  lafe_errc(1, 0, "%s", archive_error_string(a));

 write_archive(a, bsdtar);

 close(bsdtar->fd);
 bsdtar->fd = -1;
}
