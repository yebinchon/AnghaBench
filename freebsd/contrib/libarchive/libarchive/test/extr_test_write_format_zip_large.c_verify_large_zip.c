
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileblocks {int dummy; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open1 (struct archive*) ;
 int archive_read_set_callback_data (struct archive*,struct fileblocks*) ;
 int archive_read_set_open_callback (struct archive*,int ) ;
 int archive_read_set_options (struct archive*,char*) ;
 int archive_read_set_read_callback (struct archive*,int ) ;
 int archive_read_set_seek_callback (struct archive*,int ) ;
 int archive_read_set_skip_callback (struct archive*,int ) ;
 int assertEqualInt (scalar_t__,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualString (char*,int ) ;
 int memory_read ;
 int memory_read_open ;
 int memory_read_seek ;
 int memory_read_skip ;
 int sprintf (char*,char*,int) ;
 scalar_t__* test_sizes ;

__attribute__((used)) static void
verify_large_zip(struct archive *a, struct fileblocks *fileblocks)
{
 char namebuff[64];
 struct archive_entry *ae;
 int i;

 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_set_options(a, "zip:ignorecrc32"));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_set_open_callback(a, memory_read_open));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_set_read_callback(a, memory_read));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_set_skip_callback(a, memory_read_skip));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_set_seek_callback(a, memory_read_seek));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_set_callback_data(a, fileblocks));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_open1(a));




 for (i = 0; test_sizes[i] > 0; i++) {
  assertEqualIntA(a, ARCHIVE_OK,
      archive_read_next_header(a, &ae));
  sprintf(namebuff, "file_%d", i);
  assertEqualString(namebuff, archive_entry_pathname(ae));
  assertEqualInt(test_sizes[i], archive_entry_size(ae));
 }
 assertEqualIntA(a, 0, archive_read_next_header(a, &ae));
 assertEqualString("lastfile", archive_entry_pathname(ae));

 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
}
