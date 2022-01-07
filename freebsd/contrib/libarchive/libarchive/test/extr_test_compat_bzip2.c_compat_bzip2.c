
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 scalar_t__ ARCHIVE_EOF ;
 int ARCHIVE_FILTER_BZIP2 ;
 int ARCHIVE_FORMAT_TAR_USTAR ;
 scalar_t__ ARCHIVE_OK ;
 char* archive_entry_pathname (struct archive_entry*) ;
 scalar_t__ archive_filter_code (struct archive*,int ) ;
 char const* archive_filter_name (struct archive*,int ) ;
 scalar_t__ archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 scalar_t__ archive_read_support_filter_bzip2 (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (scalar_t__,int ) ;
 int assertEqualIntA (struct archive*,scalar_t__,int ) ;
 int assertEqualString (char const*,char*) ;
 int extract_reference_file (char const*) ;
 int failure (char*,int,char const*,char const*) ;
 int skipping (char*) ;

__attribute__((used)) static void
compat_bzip2(const char *name)
{
 const char *n[7] = { "f1", "f2", "f3", "d1/f1", "d1/f2", "d1/f3", ((void*)0) };
 struct archive_entry *ae;
 struct archive *a;
 int i;

 assert((a = archive_read_new()) != ((void*)0));
 if (ARCHIVE_OK != archive_read_support_filter_bzip2(a)) {
  skipping("Unsupported bzip2");
  return;
 }
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 extract_reference_file(name);
 assertEqualIntA(a, ARCHIVE_OK, archive_read_open_filename(a, name, 2));


 for (i = 0; i < 6; ++i) {
  failure("Could not read file %d (%s) from %s", i, n[i], name);
  assertEqualIntA(a, ARCHIVE_OK,
      archive_read_next_header(a, &ae));
  assertEqualString(n[i], archive_entry_pathname(ae));
 }


 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));


 assertEqualInt(archive_filter_code(a, 0), ARCHIVE_FILTER_BZIP2);
 assertEqualString(archive_filter_name(a, 0), "bzip2");
 assertEqualInt(archive_format(a), ARCHIVE_FORMAT_TAR_USTAR);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(archive_filter_code(a, 0), ARCHIVE_FILTER_BZIP2);
 assertEqualString(archive_filter_name(a, 0), "bzip2");
 assertEqualInt(archive_format(a), ARCHIVE_FORMAT_TAR_USTAR);

 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
