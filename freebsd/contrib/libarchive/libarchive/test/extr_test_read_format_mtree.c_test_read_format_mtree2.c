
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int archive ;


 int AE_IFDIR ;
 int ARCHIVE_EOF ;
 int ARCHIVE_FORMAT_MTREE ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_file_count (struct archive*) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_memory (struct archive*,char*,int) ;
 int archive_read_set_options (struct archive*,char*) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualString (int ,char*) ;

__attribute__((used)) static void
test_read_format_mtree2(void)
{
 static char archive[] =
     "#mtree\n"
     "d type=dir content=.\n";
 struct archive_entry *ae;
 struct archive *a;

 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_set_options(a, "mtree:checkfs"));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_open_memory(a, archive, sizeof(archive)));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(archive_format(a), ARCHIVE_FORMAT_MTREE);
 assertEqualString(archive_entry_pathname(ae), "d");
 assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
 assertEqualInt(1, archive_file_count(a));
 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
