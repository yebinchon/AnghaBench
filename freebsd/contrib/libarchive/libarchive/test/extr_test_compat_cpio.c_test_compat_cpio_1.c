
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FILTER_NONE ;
 int ARCHIVE_FORMAT_CPIO_SVR4_NOCRC ;
 int ARCHIVE_OK ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_hardlink (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char*,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualString (char*,int ) ;
 int extract_reference_file (char*) ;

__attribute__((used)) static void
test_compat_cpio_1(void)
{
 char name[] = "test_compat_cpio_1.cpio";
 struct archive_entry *ae;
 struct archive *a;

 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 extract_reference_file(name);
 assertEqualIntA(a, ARCHIVE_OK, archive_read_open_filename(a, name, 17));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("foo1", archive_entry_pathname(ae));
 assertEqualString(((void*)0), archive_entry_hardlink(ae));
 assertEqualInt(1260250228, archive_entry_mtime(ae));
 assertEqualInt(1000, archive_entry_uid(ae));
 assertEqualInt(1000, archive_entry_gid(ae));
 assertEqualInt(0100644, archive_entry_mode(ae));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("foo2", archive_entry_pathname(ae));
 assertEqualString(((void*)0), archive_entry_hardlink(ae));
 assertEqualInt(1260250228, archive_entry_mtime(ae));
 assertEqualInt(1000, archive_entry_uid(ae));
 assertEqualInt(1000, archive_entry_gid(ae));
 assertEqualInt(0100644, archive_entry_mode(ae));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("bar1", archive_entry_pathname(ae));
 assertEqualString(((void*)0), archive_entry_hardlink(ae));
 assertEqualInt(1260250228, archive_entry_mtime(ae));
 assertEqualInt(1000, archive_entry_uid(ae));
 assertEqualInt(1000, archive_entry_gid(ae));
 assertEqualInt(0100644, archive_entry_mode(ae));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("bar2", archive_entry_pathname(ae));
 assertEqualString("bar1", archive_entry_hardlink(ae));
 assertEqualInt(1260250228, archive_entry_mtime(ae));
 assertEqualInt(1000, archive_entry_uid(ae));
 assertEqualInt(1000, archive_entry_gid(ae));
 assertEqualInt(0100644, archive_entry_mode(ae));


 assertEqualInt(archive_filter_code(a, 0), ARCHIVE_FILTER_NONE);
 assertEqualInt(archive_format(a), ARCHIVE_FORMAT_CPIO_SVR4_NOCRC);

 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
