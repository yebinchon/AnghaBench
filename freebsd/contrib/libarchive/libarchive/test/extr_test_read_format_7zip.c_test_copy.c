
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int buff ;


 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_FILTER_NONE ;
 int ARCHIVE_FORMAT_7ZIP ;
 int ARCHIVE_OK ;
 scalar_t__ ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int O_BINARY ;
 int O_RDONLY ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_file_count (struct archive*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data (struct archive*,char*,int) ;
 int archive_read_free (struct archive*) ;
 scalar_t__ archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_fd (struct archive*,int,int) ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualMem (char*,char*,int) ;
 int assertEqualString (char*,int ) ;
 int close (int) ;
 int extract_reference_file (char const*) ;
 int open (char const*,int) ;

__attribute__((used)) static void
test_copy(int use_open_fd)
{
 const char *refname = "test_read_format_7zip_copy.7z";
 struct archive_entry *ae;
 struct archive *a;
 char buff[128];
 int fd = -1;

 extract_reference_file(refname);
 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 if (use_open_fd) {
  fd = open(refname, O_RDONLY | O_BINARY);
  assertEqualIntA(a, ARCHIVE_OK,
      archive_read_open_fd(a, fd, 10240));
 } else {
  assertEqualIntA(a, ARCHIVE_OK,
      archive_read_open_filename(a, refname, 10240));
 }


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt((AE_IFREG | 0666), archive_entry_mode(ae));
 assertEqualString("file1", archive_entry_pathname(ae));
 assertEqualInt(86401, archive_entry_mtime(ae));
 assertEqualInt(60, archive_entry_size(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assert(archive_read_has_encrypted_entries(a) > ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
 assertEqualInt(60, archive_read_data(a, buff, sizeof(buff)));
 assertEqualMem(buff, "    ", 4);

 assertEqualInt(1, archive_file_count(a));


 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));


 assertEqualIntA(a, ARCHIVE_FILTER_NONE, archive_filter_code(a, 0));
 assertEqualIntA(a, ARCHIVE_FORMAT_7ZIP, archive_format(a));


 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
 if (fd != -1)
  close(fd);
}
