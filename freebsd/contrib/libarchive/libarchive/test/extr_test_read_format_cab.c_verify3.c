
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef enum comp_type { ____Placeholder_comp_type } comp_type ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FILTER_NONE ;
 int ARCHIVE_FORMAT_CAB ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int STORE ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_file_count (struct archive*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int extract_reference_file (char const*) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void
verify3(const char *refname, enum comp_type comp)
{
 struct archive_entry *ae;
 struct archive *a;
 char zero[128];

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
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);


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
