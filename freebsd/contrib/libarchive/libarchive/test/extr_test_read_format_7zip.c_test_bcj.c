
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int buff ;


 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_FILTER_NONE ;
 int ARCHIVE_FORMAT_7ZIP ;
 int ARCHIVE_OK ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 size_t archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 size_t archive_entry_size (struct archive_entry*) ;
 size_t archive_file_count (struct archive*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 size_t archive_read_close (struct archive*) ;
 scalar_t__ archive_read_data (struct archive*,char*,int) ;
 size_t archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (int,size_t) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualString (char*,int ) ;
 int extract_reference_file (char const*) ;

__attribute__((used)) static void
test_bcj(const char *refname)
{
 struct archive_entry *ae;
 struct archive *a;
 size_t remaining;
 ssize_t bytes;
 char buff[1024];

 extract_reference_file(refname);
 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_open_filename(a, refname, 10240));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt((AE_IFREG | 0444), archive_entry_mode(ae) & ~0111);
 assertEqualString("x86exe", archive_entry_pathname(ae));
 assertEqualInt(172802, archive_entry_mtime(ae));
 assertEqualInt(27328, archive_entry_size(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), 0);
 remaining = (size_t)archive_entry_size(ae);
 while (remaining) {
  if (remaining < sizeof(buff))
   assertEqualInt(remaining,
       bytes = archive_read_data(a, buff, sizeof(buff)));
  else
   assertEqualInt(sizeof(buff),
       bytes = archive_read_data(a, buff, sizeof(buff)));
  if (bytes > 0)
   remaining -= bytes;
  else
   break;
 }
 assertEqualInt(0, remaining);

 assertEqualInt(1, archive_file_count(a));


 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));


 assertEqualIntA(a, ARCHIVE_FILTER_NONE, archive_filter_code(a, 0));
 assertEqualIntA(a, ARCHIVE_FORMAT_7ZIP, archive_format(a));


 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
