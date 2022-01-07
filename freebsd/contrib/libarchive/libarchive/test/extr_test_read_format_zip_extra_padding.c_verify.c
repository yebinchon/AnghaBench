
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int archive_entry_atime (struct archive_entry*) ;
 int archive_entry_ctime (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualString (char*,int ) ;

__attribute__((used)) static void verify(struct archive *a) {
 struct archive_entry *ae;

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("a", archive_entry_pathname(ae));
 assertEqualInt(AE_IFREG | 0664, archive_entry_mode(ae));
 assertEqualInt(0x5c1558d2, archive_entry_mtime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualInt(0x5c1558db, archive_entry_atime(ae));

 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
}
