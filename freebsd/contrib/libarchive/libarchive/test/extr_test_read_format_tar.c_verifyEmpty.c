
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
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int archiveEmpty ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_filter_name (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 scalar_t__ archive_read_open_memory (struct archive*,int ,int) ;
 scalar_t__ archive_read_support_filter_all (struct archive*) ;
 scalar_t__ archive_read_support_format_all (struct archive*) ;
 int assert (int ) ;
 int assertA (int) ;
 int assertEqualInt (int ,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualString (int ,char*) ;
 int failure (char*) ;

__attribute__((used)) static void verifyEmpty(void)
{
 struct archive_entry *ae;
 struct archive *a;

 assert((a = archive_read_new()) != ((void*)0));
 assertA(0 == archive_read_support_filter_all(a));
 assertA(0 == archive_read_support_format_all(a));
 assertA(0 == archive_read_open_memory(a, archiveEmpty, 512));
 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
 assertEqualInt(archive_filter_code(a, 0), ARCHIVE_FILTER_NONE);
 assertEqualString(archive_filter_name(a, 0), "none");
 failure("512 zero bytes should be recognized as a tar archive.");
 assertEqualInt(archive_format(a), ARCHIVE_FORMAT_TAR);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
