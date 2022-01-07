
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int filedata ;


 int AE_IFDIR ;
 int AE_IFLNK ;
 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int archive_entry_atime (struct archive_entry*) ;
 int archive_entry_ctime (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_mtime_nsec (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_entry_size_is_set (struct archive_entry*) ;
 int archive_entry_symlink (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data (struct archive*,char*,int) ;
 int archive_read_free (struct archive*) ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualMem (char*,char*,int) ;
 int assertEqualString (char*,int ) ;

__attribute__((used)) static void
verify_contents(struct archive *a, int seeking, int improved_streaming)
{
 char filedata[64];
 struct archive_entry *ae;






 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(1, archive_entry_mtime(ae));

 assertEqualInt(0, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("file", archive_entry_pathname(ae));
 if (seeking || improved_streaming) {
  assertEqualInt(AE_IFREG | 0755, archive_entry_mode(ae));
 }
 assertEqualInt(8, archive_entry_size(ae));
 assert(archive_entry_size_is_set(ae));
 assertEqualIntA(a, 8,
     archive_read_data(a, filedata, sizeof(filedata)));
 assertEqualMem(filedata, "12345678", 8);



 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(1, archive_entry_mtime(ae));
 assertEqualInt(0, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("file2", archive_entry_pathname(ae));
 if (seeking || improved_streaming) {
  assertEqualInt(AE_IFREG | 0755, archive_entry_mode(ae));
 }
 assertEqualInt(4, archive_entry_size(ae));
 assert(archive_entry_size_is_set(ae));
 assertEqualIntA(a, 4,
     archive_read_data(a, filedata, sizeof(filedata)));
 assertEqualMem(filedata, "1234", 4);


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(2, archive_entry_mtime(ae));
 assertEqualInt(0, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("file3", archive_entry_pathname(ae));
 if (seeking || improved_streaming) {
  assertEqualInt(AE_IFREG | 0621, archive_entry_mode(ae));
 }
 if (seeking) {
  assertEqualInt(5, archive_entry_size(ae));
 } else {
  assertEqualInt(0, archive_entry_size_is_set(ae));
 }
 assertEqualIntA(a, 5,
     archive_read_data(a, filedata, sizeof(filedata)));
 assertEqualMem(filedata, "mnopq", 5);


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(1, archive_entry_mtime(ae));
 assertEqualInt(0, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("symlink", archive_entry_pathname(ae));
 if (seeking || improved_streaming) {
  assertEqualInt(AE_IFLNK | 0755, archive_entry_mode(ae));
  assertEqualInt(0, archive_entry_size(ae));
  assertEqualString("file1", archive_entry_symlink(ae));
 } else {


  assertEqualInt(AE_IFREG | 0664, archive_entry_mode(ae));
  assertEqualInt(5, archive_entry_size(ae));
  assert(archive_entry_size_is_set(ae));
 }


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(11, archive_entry_mtime(ae));
 assertEqualInt(0, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("dir/", archive_entry_pathname(ae));
 if (seeking || improved_streaming)
  assertEqualInt(AE_IFDIR | 0755, archive_entry_mode(ae));
 assertEqualInt(0, archive_entry_size(ae));
 assert(archive_entry_size_is_set(ae));
 assertEqualIntA(a, 0, archive_read_data(a, filedata, 10));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(1, archive_entry_mtime(ae));

 assertEqualInt(0, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("file_stored", archive_entry_pathname(ae));
 if (seeking || improved_streaming) {
  assertEqualInt(AE_IFREG | 0755, archive_entry_mode(ae));
 }
 assert(archive_entry_size_is_set(ae));
 assert(archive_entry_size_is_set(ae));
 assertEqualInt(8, archive_entry_size(ae));
 assertEqualIntA(a, 8,
     archive_read_data(a, filedata, sizeof(filedata)));
 assertEqualMem(filedata, "12345678", 8);



 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(1, archive_entry_mtime(ae));
 assertEqualInt(0, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("file2_stored", archive_entry_pathname(ae));
 if (seeking || improved_streaming) {
  assertEqualInt(AE_IFREG | 0755, archive_entry_mode(ae));
 }
 assertEqualInt(4, archive_entry_size(ae));
 assert(archive_entry_size_is_set(ae));
 assertEqualIntA(a, 4,
     archive_read_data(a, filedata, sizeof(filedata)));
 assertEqualMem(filedata, "ACEG", 4);


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(2, archive_entry_mtime(ae));
 assertEqualInt(0, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("file3_stored", archive_entry_pathname(ae));
 if (seeking || improved_streaming)
  assertEqualInt(AE_IFREG | 0621, archive_entry_mode(ae));
 if (seeking) {
  assertEqualInt(5, archive_entry_size(ae));
 } else {
  assertEqualInt(0, archive_entry_size_is_set(ae));
 }
 assertEqualIntA(a, 5,
     archive_read_data(a, filedata, sizeof(filedata)));
 assertEqualMem(filedata, "ijklm", 4);


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(1, archive_entry_mtime(ae));
 assertEqualInt(0, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("symlink_stored", archive_entry_pathname(ae));
 if (seeking || improved_streaming) {
  assertEqualInt(AE_IFLNK | 0755, archive_entry_mode(ae));
  assertEqualInt(0, archive_entry_size(ae));
  assertEqualString("file1", archive_entry_symlink(ae));
 } else {
  assertEqualInt(AE_IFREG | 0664, archive_entry_mode(ae));
  assertEqualInt(5, archive_entry_size(ae));
  assertEqualIntA(a, 5, archive_read_data(a, filedata, 10));
  assertEqualMem(filedata, "file1", 5);
 }


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(11, archive_entry_mtime(ae));
 assertEqualInt(0, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("dir_stored/", archive_entry_pathname(ae));
 if (seeking || improved_streaming)
  assertEqualInt(AE_IFDIR | 0755, archive_entry_mode(ae));
 assertEqualInt(0, archive_entry_size(ae));
 assertEqualIntA(a, 0, archive_read_data(a, filedata, 10));


 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
