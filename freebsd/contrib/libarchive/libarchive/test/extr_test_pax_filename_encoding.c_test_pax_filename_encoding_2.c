
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int buff ;


 int AE_IFLNK ;
 int AE_IFREG ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int LC_ALL ;
 int archive_entry_copy_gname (struct archive_entry*,char*) ;
 int archive_entry_copy_hardlink (struct archive_entry*,char*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_copy_symlink (struct archive_entry*,char*) ;
 int archive_entry_copy_uname (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_gname (struct archive_entry*) ;
 int archive_entry_hardlink (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_symlink (struct archive_entry*) ;
 int archive_entry_uname (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_memory (struct archive*,char*,size_t) ;
 int archive_read_support_format_tar (struct archive*) ;
 int archive_write_add_filter_none (struct archive*) ;
 int archive_write_close (struct archive*) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,char*,int,size_t*) ;
 int archive_write_set_bytes_per_block (struct archive*,int ) ;
 int archive_write_set_format_pax (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (int ,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualString (char*,int ) ;
 int failure (char*) ;
 int * setlocale (int ,char*) ;
 int skipping (char*) ;

__attribute__((used)) static void
test_pax_filename_encoding_2(void)
{
 char filename[] = "abc\314\214mno\374xyz";
 struct archive *a;
 struct archive_entry *entry;
 char buff[65536];
 char longname[] = "abc\314\214mno\374xyz"
     "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
     "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
     "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
     "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
     "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
     "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
     ;
 size_t used;






 if (((void*)0) == setlocale(LC_ALL, "en_US.UTF-8")) {
  skipping("invalid encoding tests require a suitable locale;"
      " en_US.UTF-8 not available on this system");
  return;
 }

 assert((a = archive_write_new()) != ((void*)0));
 assertEqualIntA(a, 0, archive_write_set_format_pax(a));
 assertEqualIntA(a, 0, archive_write_add_filter_none(a));
 assertEqualIntA(a, 0, archive_write_set_bytes_per_block(a, 0));
 assertEqualInt(0,
     archive_write_open_memory(a, buff, sizeof(buff), &used));

 assert((entry = archive_entry_new()) != ((void*)0));

 archive_entry_copy_pathname(entry, filename);
 archive_entry_copy_gname(entry, filename);
 archive_entry_copy_uname(entry, filename);
 archive_entry_copy_hardlink(entry, filename);
 archive_entry_set_filetype(entry, AE_IFREG);
 failure("This should generate a warning for nonconvertible names.");
 assertEqualInt(ARCHIVE_WARN, archive_write_header(a, entry));
 archive_entry_free(entry);

 assert((entry = archive_entry_new()) != ((void*)0));

 archive_entry_copy_pathname(entry, filename);
 archive_entry_copy_gname(entry, filename);
 archive_entry_copy_uname(entry, filename);
 archive_entry_copy_symlink(entry, filename);
 archive_entry_set_filetype(entry, AE_IFLNK);
 failure("This should generate a warning for nonconvertible names.");
 assertEqualInt(ARCHIVE_WARN, archive_write_header(a, entry));
 archive_entry_free(entry);

 assert((entry = archive_entry_new()) != ((void*)0));

 archive_entry_copy_pathname(entry, longname);
 archive_entry_set_filetype(entry, AE_IFREG);
 failure("This should generate a warning for nonconvertible names.");
 assertEqualInt(ARCHIVE_WARN, archive_write_header(a, entry));
 archive_entry_free(entry);

 assertEqualIntA(a, ARCHIVE_OK, archive_write_close(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));





 assert((a = archive_read_new()) != ((void*)0));
 assertEqualInt(0, archive_read_support_format_tar(a));
 assertEqualInt(0, archive_read_open_memory(a, buff, used));

 assertEqualInt(0, archive_read_next_header(a, &entry));
 assertEqualString(filename, archive_entry_pathname(entry));
 assertEqualString(filename, archive_entry_gname(entry));
 assertEqualString(filename, archive_entry_uname(entry));
 assertEqualString(filename, archive_entry_hardlink(entry));

 assertEqualInt(0, archive_read_next_header(a, &entry));
 assertEqualString(filename, archive_entry_pathname(entry));
 assertEqualString(filename, archive_entry_gname(entry));
 assertEqualString(filename, archive_entry_uname(entry));
 assertEqualString(filename, archive_entry_symlink(entry));

 assertEqualInt(0, archive_read_next_header(a, &entry));
 assertEqualString(longname, archive_entry_pathname(entry));

 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
