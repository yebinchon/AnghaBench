
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef enum comp_type { ____Placeholder_comp_type } comp_type ;
typedef int buff ;


 int AE_IFREG ;
 int ARCHIVE_EOF ;
 scalar_t__ ARCHIVE_FATAL ;
 int ARCHIVE_FILTER_NONE ;
 int ARCHIVE_FORMAT_CAB ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int MSZIP ;
 int STORE ;
 scalar_t__ archive_entry_gid (struct archive_entry*) ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 scalar_t__ archive_entry_mode (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 scalar_t__ archive_entry_uid (struct archive_entry*) ;
 int archive_error_string (struct archive*) ;
 scalar_t__ archive_file_count (struct archive*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 scalar_t__ archive_read_close (struct archive*) ;
 scalar_t__ archive_read_data (struct archive*,char*,int) ;
 scalar_t__ archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int * archive_zlib_version () ;
 int assert (int ) ;
 int assertEqualInt (int,scalar_t__) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualMem (char*,char*,int) ;
 int assertEqualString (char*,int ) ;
 int extract_reference_file (char const*) ;
 char* file1 ;
 int file1_size ;
 char* file2 ;
 int file2_size ;
 int memset (char*,int ,int) ;
 int skipping (char*,int ) ;

__attribute__((used)) static void
verify(const char *refname, enum comp_type comp)
{
 struct archive_entry *ae;
 struct archive *a;
 char buff[128];
 char zero[128];
 size_t s;

 memset(zero, 0, sizeof(zero));
 extract_reference_file(refname);
 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_open_filename(a, refname, 10240));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt((AE_IFREG | 0666), archive_entry_mode(ae));
 assertEqualString("empty", archive_entry_pathname(ae));
 assertEqualInt(0, archive_entry_uid(ae));
 assertEqualInt(0, archive_entry_gid(ae));
 assertEqualInt(0, archive_entry_size(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 if (comp != STORE) {




  assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
  assertEqualInt((AE_IFREG | 0666), archive_entry_mode(ae));
  assertEqualString("zero", archive_entry_pathname(ae));
  assertEqualInt(0, archive_entry_uid(ae));
  assertEqualInt(0, archive_entry_gid(ae));
  assertEqualInt(archive_entry_is_encrypted(ae), 0);
  assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
  assertEqualInt(33000, archive_entry_size(ae));
  for (s = 0; s + sizeof(buff) < 33000; s+= sizeof(buff)) {
   ssize_t rsize = archive_read_data(a, buff, sizeof(buff));
   if (comp == MSZIP && rsize == ARCHIVE_FATAL && archive_zlib_version() == ((void*)0)) {
    skipping("Skipping CAB format(MSZIP) check: %s",
        archive_error_string(a));
    goto finish;
   }
   assertEqualInt(sizeof(buff), rsize);
   assertEqualMem(buff, zero, sizeof(buff));
  }
  assertEqualInt(33000 - s, archive_read_data(a, buff, 33000 - s));
  assertEqualMem(buff, zero, 33000 - s);
 }


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt((AE_IFREG | 0666), archive_entry_mode(ae));
 assertEqualString("dir1/file1", archive_entry_pathname(ae));
 assertEqualInt(0, archive_entry_uid(ae));
 assertEqualInt(0, archive_entry_gid(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
 assertEqualInt(file1_size, archive_entry_size(ae));
 assertEqualInt(file1_size, archive_read_data(a, buff, file1_size));
 assertEqualMem(buff, file1, file1_size);


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt((AE_IFREG | 0666), archive_entry_mode(ae));
 assertEqualString("dir2/file2", archive_entry_pathname(ae));
 assertEqualInt(0, archive_entry_uid(ae));
 assertEqualInt(0, archive_entry_gid(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
 assertEqualInt(file2_size, archive_entry_size(ae));
 assertEqualInt(file2_size, archive_read_data(a, buff, file2_size));
 assertEqualMem(buff, file2, file2_size);


 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));

 if (comp != STORE) {
  assertEqualInt(4, archive_file_count(a));
 } else {
  assertEqualInt(3, archive_file_count(a));
 }


 assertEqualIntA(a, ARCHIVE_FILTER_NONE, archive_filter_code(a, 0));
 assertEqualIntA(a, ARCHIVE_FORMAT_CAB, archive_format(a));


finish:
 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
