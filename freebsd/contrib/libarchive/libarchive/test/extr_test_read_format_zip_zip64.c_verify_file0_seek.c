
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data (struct archive*,char*,int) ;
 int archive_read_free (struct archive*) ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualMem (char*,char*,int) ;
 int assertEqualString (char*,int ) ;

__attribute__((used)) static void
verify_file0_seek(struct archive *a)
{
 struct archive_entry *ae;

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("-", archive_entry_pathname(ae));
 assertEqualInt(AE_IFREG | 0660, archive_entry_mode(ae));
 assertEqualInt(6, archive_entry_size(ae));







 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_free(a));
}
