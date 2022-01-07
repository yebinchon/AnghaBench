
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_tar (struct archive*) ;
 int assertEqualInt (int ,int ) ;
 int assertEqualString (char*,int ) ;
 int extract_reference_file (char const*) ;
 int failure (char*) ;

__attribute__((used)) static void
test_pax_filename_encoding_1(void)
{
 static const char testname[] = "test_pax_filename_encoding.tar";




 char filename[] = "abc\314\214mno\374xyz";
 struct archive *a;
 struct archive_entry *entry;




 extract_reference_file(testname);
 a = archive_read_new();
 assertEqualInt(ARCHIVE_OK, archive_read_support_format_tar(a));
 assertEqualInt(ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualInt(ARCHIVE_OK,
     archive_read_open_filename(a, testname, 10240));





 failure("Invalid UTF8 in a pax archive pathname should cause a warning");
 assertEqualInt(ARCHIVE_WARN, archive_read_next_header(a, &entry));
 assertEqualString(filename, archive_entry_pathname(entry));




 failure("A pathname with hdrcharset=BINARY can have invalid UTF8\n"
     " characters in it without generating a warning");
 assertEqualInt(ARCHIVE_OK, archive_read_next_header(a, &entry));
 assertEqualString(filename, archive_entry_pathname(entry));
 archive_read_free(a);
}
