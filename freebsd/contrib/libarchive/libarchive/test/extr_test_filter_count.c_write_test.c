
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_filter_count (struct archive*) ;
 int archive_write_add_filter_bzip2 (struct archive*) ;
 int archive_write_free (struct archive*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,char*,int,int ) ;
 int archive_write_set_bytes_per_block (struct archive*,int) ;
 int archive_write_set_format_ustar (struct archive*) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int canBzip2 () ;
 int skipping (char*) ;

__attribute__((used)) static void
write_test(void)
{
 char buff[4096];
 struct archive* a = archive_write_new();
 int r;

 assertEqualIntA(a, ARCHIVE_OK, archive_write_set_format_ustar(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_set_bytes_per_block(a, 10));

 r = archive_write_add_filter_bzip2(a);
 if((ARCHIVE_WARN == r && !canBzip2()) || ARCHIVE_WARN > r) {
  skipping("bzip2 unsupported");
  return;
 }
 assertEqualIntA(a, ARCHIVE_OK, archive_write_open_memory(a, buff, 4096, 0));

 assertEqualInt(2, archive_filter_count(a));
 archive_write_free(a);
}
