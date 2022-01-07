
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFLNK ;
 int AE_IFREG ;
 int ARCHIVE_OK ;
 int S_IFDIR ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_copy_symlink (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_mtime_nsec (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_mtime (struct archive_entry*,int,int) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_entry_symlink (struct archive_entry*) ;
 int archive_entry_unset_size (struct archive_entry*) ;
 int archive_write_close (struct archive*) ;
 int archive_write_data (struct archive*,char*,int) ;
 int archive_write_finish_entry (struct archive*) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 int archive_write_zip_set_compression_deflate (struct archive*) ;
 int archive_write_zip_set_compression_store (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualString (char*,int ) ;
 int failure (char*) ;

__attribute__((used)) static void
write_contents(struct archive *a)
{
 struct archive_entry *ae;
 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 1, 10);
 archive_entry_copy_pathname(ae, "file");
 archive_entry_set_mode(ae, AE_IFREG | 0755);
 archive_entry_set_size(ae, 8);
 assertEqualInt(0, archive_write_header(a, ae));
 archive_entry_free(ae);
 assertEqualInt(8, archive_write_data(a, "12345678", 9));
 assertEqualInt(0, archive_write_data(a, "1", 1));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 1, 10);
 archive_entry_copy_pathname(ae, "file2");
 archive_entry_set_mode(ae, AE_IFREG | 0755);
 archive_entry_set_size(ae, 4);
 assertEqualInt(ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
 assertEqualInt(4, archive_write_data(a, "1234", 4));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 2, 15);
 archive_entry_copy_pathname(ae, "file3");
 archive_entry_set_mode(ae, AE_IFREG | 0621);
 archive_entry_unset_size(ae);
 assertEqualInt(ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
 assertEqualInt(5, archive_write_data(a, "mnopq", 5));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 1, 10);
 assertEqualInt(1, archive_entry_mtime(ae));
 assertEqualInt(10, archive_entry_mtime_nsec(ae));
 archive_entry_copy_pathname(ae, "symlink");
 assertEqualString("symlink", archive_entry_pathname(ae));
 archive_entry_copy_symlink(ae, "file1");
 assertEqualString("file1", archive_entry_symlink(ae));
 archive_entry_set_mode(ae, AE_IFLNK | 0755);
 assertEqualInt((AE_IFLNK | 0755), archive_entry_mode(ae));
 archive_entry_set_size(ae, 4);

 assertEqualInt(ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 11, 110);
 archive_entry_copy_pathname(ae, "dir");
 archive_entry_set_mode(ae, S_IFDIR | 0755);
 archive_entry_set_size(ae, 512);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
 failure("size should be zero so that applications know not to write");
 assertEqualInt(0, archive_entry_size(ae));
 archive_entry_free(ae);
 assertEqualIntA(a, 0, archive_write_data(a, "12345678", 9));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_zip_set_compression_store(a));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 1, 10);
 archive_entry_copy_pathname(ae, "file_stored");
 archive_entry_set_mode(ae, AE_IFREG | 0755);
 archive_entry_set_size(ae, 8);
 assertEqualInt(0, archive_write_header(a, ae));
 archive_entry_free(ae);
 assertEqualInt(8, archive_write_data(a, "12345678", 9));
 assertEqualInt(0, archive_write_data(a, "1", 1));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 1, 10);
 archive_entry_copy_pathname(ae, "file2_stored");
 archive_entry_set_mode(ae, AE_IFREG | 0755);
 archive_entry_set_size(ae, 4);
 assertEqualInt(ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
 assertEqualInt(4, archive_write_data(a, "ACEG", 4));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 2, 15);
 archive_entry_copy_pathname(ae, "file3_stored");
 archive_entry_set_mode(ae, AE_IFREG | 0621);
 archive_entry_unset_size(ae);
 assertEqualInt(ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
 assertEqualInt(5, archive_write_data(a, "ijklm", 5));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 1, 10);
 archive_entry_copy_pathname(ae, "symlink_stored");
 archive_entry_copy_symlink(ae, "file1");
 archive_entry_set_mode(ae, AE_IFLNK | 0755);
 archive_entry_set_size(ae, 4);
 assertEqualInt(ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 11, 110);
 archive_entry_copy_pathname(ae, "dir_stored");
 archive_entry_set_mode(ae, S_IFDIR | 0755);
 archive_entry_set_size(ae, 512);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
 failure("size should be zero so that applications know not to write");
 assertEqualInt(0, archive_entry_size(ae));
 archive_entry_free(ae);
 assertEqualIntA(a, 0, archive_write_data(a, "12345678", 9));



 assertEqualInt(ARCHIVE_OK, archive_write_close(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));
}
