
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
 int archive_entry_size_is_set (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data (struct archive*,char*,int) ;
 int archive_read_free (struct archive*) ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int assert (int) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualMem (char*,char*,int) ;
 int assertEqualString (char*,int ) ;

__attribute__((used)) static void
verify_file0_stream(struct archive *a, int size_known)
{
 struct archive_entry *ae;

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("-", archive_entry_pathname(ae));
 assertEqualInt(AE_IFREG | 0664, archive_entry_mode(ae));
 if (size_known) {


  assert(archive_entry_size_is_set(ae));
  assertEqualInt(6, archive_entry_size(ae));
 } else {

  assert(!archive_entry_size_is_set(ae));
 }







 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_free(a));
}
