
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int int64_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FILTER_COMPRESS ;
 int ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ;
 int ARCHIVE_OK ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_gname (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_sparse_next (struct archive_entry*,int*,int*) ;
 int archive_entry_sparse_reset (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_entry_uname (struct archive_entry*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data_block (struct archive*,void const**,size_t*,int*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char*,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int) ;
 int assertEqualInt (int,int) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualMem (char const*,char*,int) ;
 int assertEqualString (char*,int ) ;
 int extract_reference_file (char*) ;
 int failure (char*) ;
 int memset (char*,char,int) ;

__attribute__((used)) static void
test_compat_solaris_pax_sparse_2(void)
{
 char name[] = "test_compat_solaris_pax_sparse_2.pax.Z";
 struct archive_entry *ae;
 struct archive *a;
 int64_t offset, length;
 const void *buff;
 size_t bytes_read;
 int r;

 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 extract_reference_file(name);
 assertEqualIntA(a, ARCHIVE_OK, archive_read_open_filename(a, name, 10240));


 assertEqualIntA(a, ARCHIVE_OK, r = archive_read_next_header(a, &ae));
 if (r != ARCHIVE_OK) {
  archive_read_free(a);
  return;
 }
 assertEqualString("hole", archive_entry_pathname(ae));
 assertEqualInt(1310416789, archive_entry_mtime(ae));
 assertEqualInt(101, archive_entry_uid(ae));
 assertEqualString("cue", archive_entry_uname(ae));
 assertEqualInt(10, archive_entry_gid(ae));
 assertEqualString("staff", archive_entry_gname(ae));
 assertEqualInt(0100644, archive_entry_mode(ae));


 failure("This sparse file should have two data blocks");
 assertEqualInt(2, archive_entry_sparse_reset(ae));
 assertEqualInt(ARCHIVE_OK,
     archive_entry_sparse_next(ae, &offset, &length));
 assertEqualInt(393216, offset);
 assertEqualInt(131072, length);
 assertEqualInt(ARCHIVE_OK,
     archive_entry_sparse_next(ae, &offset, &length));
 assertEqualInt(786432, offset);
 assertEqualInt(32799, length);
 while (ARCHIVE_OK ==
     archive_read_data_block(a, &buff, &bytes_read, &offset)) {
  failure("The data blocks should not include the hole");
  assert((offset >= 393216 && offset + bytes_read <= 393216+131072) ||
         (offset >= 786432 && offset + bytes_read <= 786432+32799));
  if (offset + bytes_read == 819231 && bytes_read >= 31) {
   char data[32];
   const char *last = buff;
   last += bytes_read - 31;
   memset(data, 'c', 31);
   failure("Last 31 bytes should be all 'c'");
   assertEqualMem(last, data, 31);
  }
 }


 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));


 assertEqualInt(archive_filter_code(a, 0), ARCHIVE_FILTER_COMPRESS);
 assertEqualInt(archive_format(a), ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE);

 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
