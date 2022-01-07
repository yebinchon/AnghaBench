
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FILTER_COMPRESS ;
 int ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int LC_ALL ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_set_options (struct archive*,char*) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int archive_read_support_format_tar (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualString (char*,int ) ;
 int * setlocale (int ,char*) ;
 int skipping (char*) ;

__attribute__((used)) static void
test_read_format_tar_filename_KOI8R_CP1251(const char *refname)
{
 struct archive *a;
 struct archive_entry *ae;





 if (((void*)0) == setlocale(LC_ALL, "Russian_Russia") &&
     ((void*)0) == setlocale(LC_ALL, "ru_RU.CP1251")) {
  skipping("CP1251 locale not available on this system.");
  return;
 }


 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_tar(a));
 if (ARCHIVE_OK != archive_read_set_options(a, "hdrcharset=UTF-8")) {
  assertEqualInt(ARCHIVE_OK, archive_read_free(a));
  skipping("This system cannot convert character-set"
      " from UTF-8 to CP1251.");
  return;
 }
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));

 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 if (ARCHIVE_OK != archive_read_set_options(a, "hdrcharset=KOI8-R")) {
  skipping("This system cannot convert character-set"
      " from KOI8-R to CP1251.");
  goto next_test;
 }
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_open_filename(a, refname, 10240));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("\xcf\xd0\xc8\xc2\xc5\xd2",
     archive_entry_pathname(ae));
 assertEqualInt(6, archive_entry_size(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("\xef\xf0\xe8\xe2\xe5\xf2",
     archive_entry_pathname(ae));
 assertEqualInt(6, archive_entry_size(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);



 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));


 assertEqualIntA(a, ARCHIVE_FILTER_COMPRESS, archive_filter_code(a, 0));
 assertEqualIntA(a, ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE,
     archive_format(a));


 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
next_test:
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));






 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_open_filename(a, refname, 10240));






 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));

 assertEqualString("\xf0\xf2\xe9\xf7\xe5\xf4",
     archive_entry_pathname(ae));
 assertEqualInt(6, archive_entry_size(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);




 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("\xef\xf0\xe8\xe2\xe5\xf2",
     archive_entry_pathname(ae));
 assertEqualInt(6, archive_entry_size(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);



 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));


 assertEqualIntA(a, ARCHIVE_FILTER_COMPRESS, archive_filter_code(a, 0));
 assertEqualIntA(a, ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE,
     archive_format(a));


 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
