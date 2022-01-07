
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFDIR ;
 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualString (char*,int ) ;

__attribute__((used)) static void verify(struct archive *a, int streaming) {
 struct archive_entry *ae;

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("abc", archive_entry_pathname(ae));
 assertEqualInt(AE_IFREG | 0664, archive_entry_mode(ae));

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 if (streaming) {

  assertEqualString("def", archive_entry_pathname(ae));
  assertEqualInt(AE_IFREG | 0664, archive_entry_mode(ae));
 } else {

  assertEqualString("def/", archive_entry_pathname(ae));
  assertEqualInt(AE_IFDIR | 0775, archive_entry_mode(ae));
 }

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("def/foo", archive_entry_pathname(ae));
 assertEqualInt(AE_IFREG | 0664, archive_entry_mode(ae));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("ghi/", archive_entry_pathname(ae));
 assertEqualInt(AE_IFDIR | 0775, archive_entry_mode(ae));



 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));

 assertEqualString("jkl/", archive_entry_pathname(ae));
 assertEqualInt(AE_IFDIR | 0775, archive_entry_mode(ae));



 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("mno/", archive_entry_pathname(ae));
 assertEqualInt(AE_IFDIR | 0775, archive_entry_mode(ae));

 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
}
