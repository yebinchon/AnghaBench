
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FILTER_COMPRESS ;
 int ARCHIVE_FORMAT_ISO9660 ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
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

__attribute__((used)) static void
test1(void)
{
 struct archive_entry *ae;
 struct archive *a;
 const char *name = "test_read_format_iso.iso.Z";

 extract_reference_file(name);

 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_open_filename(a, name, 512));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_next_header(a, &ae));
 assertEqualInt(1, archive_file_count(a));
 assertEqualInt(archive_filter_code(a, 0),
     ARCHIVE_FILTER_COMPRESS);
 assertEqualInt(archive_format(a), ARCHIVE_FORMAT_ISO9660);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
