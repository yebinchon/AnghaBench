
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef enum comp_type { ____Placeholder_comp_type } comp_type ;


 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_FILTER_NONE ;
 int ARCHIVE_FORMAT_CAB ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int MSZIP ;
 int STORE ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_file_count (struct archive*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data (struct archive*,char*,int) ;
 int archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int * archive_zlib_version () ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualMem (char*,int ,int) ;
 int assertEqualString (char*,int ) ;
 int extract_reference_file (char const*) ;
 int file2 ;
 int file2_size ;
 int memset (char*,int ,int) ;
 int skipping (char*,char const*) ;

__attribute__((used)) static void
verify2(const char *refname, enum comp_type comp)
{
 struct archive_entry *ae;
 struct archive *a;
 char buff[128];
 char zero[128];

 if (comp == MSZIP && archive_zlib_version() == ((void*)0)) {
  skipping("Skipping CAB format(MSZIP) check for %s",
    refname);
  return;
 }
 memset(zero, 0, sizeof(zero));
 extract_reference_file(refname);
 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_open_filename(a, refname, 10240));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
 if (comp != STORE) {
  assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
  assertEqualInt(archive_entry_is_encrypted(ae), 0);
  assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
 }

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt((AE_IFREG | 0666), archive_entry_mode(ae));
 assertEqualString("dir2/file2", archive_entry_pathname(ae));
 assertEqualInt(0, archive_entry_uid(ae));
 assertEqualInt(0, archive_entry_gid(ae));
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


 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
