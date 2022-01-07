
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
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualString (char*,int ) ;

__attribute__((used)) static void
compat_zip_6_verify(struct archive *a)
{
 struct archive_entry *ae;

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("New Folder/New Folder/", archive_entry_pathname(ae));
 assertEqualInt(AE_IFDIR, archive_entry_filetype(ae));




 assertEqualInt(0, archive_entry_size(ae));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("New Folder/New Folder/New Text Document.txt", archive_entry_pathname(ae));
 assertEqualInt(AE_IFREG, archive_entry_filetype(ae));


 assertEqualInt(11, archive_entry_size(ae));
 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
}
