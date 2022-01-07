
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FILTER_NONE ;
 int ARCHIVE_FORMAT_TAR ;
 int ARCHIVE_OK ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_hardlink (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
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
test_compat_tar_hardlink_1(void)
{
 char name[] = "test_compat_tar_hardlink_1.tar";
 struct archive_entry *ae;
 struct archive *a;

 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 extract_reference_file(name);
 assertEqualIntA(a, ARCHIVE_OK, archive_read_open_filename(a, name, 10240));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("xmcd-3.3.2/docs_d/READMf",
  archive_entry_pathname(ae));
 assertEqualString(((void*)0), archive_entry_hardlink(ae));
 assertEqualInt(321, archive_entry_size(ae));
 assertEqualInt(1082575645, archive_entry_mtime(ae));
 assertEqualInt(1851, archive_entry_uid(ae));
 assertEqualInt(3, archive_entry_gid(ae));
 assertEqualInt(0100444, archive_entry_mode(ae));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("xmcd-3.3.2/README",
  archive_entry_pathname(ae));
 assertEqualString(
  "xmcd-3.3.2/docs_d/READMf",
  archive_entry_hardlink(ae));
 assertEqualInt(0, archive_entry_size(ae));
 assertEqualInt(1082575645, archive_entry_mtime(ae));
 assertEqualInt(1851, archive_entry_uid(ae));
 assertEqualInt(3, archive_entry_gid(ae));
 assertEqualInt(0100444, archive_entry_mode(ae));







 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));


 assertEqualInt(archive_filter_code(a, 0), ARCHIVE_FILTER_NONE);
 assertEqualInt(archive_format(a), ARCHIVE_FORMAT_TAR);

 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
