
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_support_format_zip (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualString (char*,int ) ;
 int extract_reference_file (char const*) ;
 int free (char*) ;
 int read_open_memory_seek (struct archive*,char*,size_t,int) ;
 char* slurpfile (size_t*,char const*) ;

__attribute__((used)) static void
verify(const char *refname)
{
 char *p;
 size_t s;
 struct archive *a;
 struct archive_entry *ae;

 extract_reference_file(refname);
 p = slurpfile(&s, refname);


 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_zip(a));
 assertEqualIntA(a, ARCHIVE_OK, read_open_memory_seek(a, p, s, 1));

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("file0", archive_entry_pathname(ae));
 assertEqualInt(AE_IFREG | 0644, archive_entry_mode(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), 0);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString("build.sh", archive_entry_pathname(ae));
 assertEqualInt(AE_IFREG | 0755, archive_entry_mode(ae));
 assertEqualInt(23, archive_entry_size(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), 0);

 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), 0);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_free(a));

 free(p);
}
