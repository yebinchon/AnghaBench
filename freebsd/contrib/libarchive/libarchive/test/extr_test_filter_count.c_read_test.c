
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_filter_count (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_support_filter_bzip2 (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int canBzip2 () ;
 int extract_reference_file (char const*) ;
 int skipping (char*) ;

__attribute__((used)) static void
read_test(const char *name)
{
 struct archive* a = archive_read_new();
 int r;

 r = archive_read_support_filter_bzip2(a);
 if((ARCHIVE_WARN == r && !canBzip2()) || ARCHIVE_WARN > r) {
  skipping("bzip2 unsupported");
  return;
 }

 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));

 extract_reference_file(name);
 assertEqualIntA(a, ARCHIVE_OK, archive_read_open_filename(a, name, 2));

 assertEqualInt(2, archive_filter_count(a));

 archive_read_free(a);
}
