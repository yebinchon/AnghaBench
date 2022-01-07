
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int buff ;


 int ARCHIVE_OK ;
 int S_IFDIR ;
 int S_IFREG ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 scalar_t__ archive_read_open_memory (struct archive*,char*,size_t) ;
 scalar_t__ archive_read_support_filter_all (struct archive*) ;
 scalar_t__ archive_read_support_format_all (struct archive*) ;
 scalar_t__ archive_write_add_filter_none (struct archive*) ;
 int archive_write_close (struct archive*) ;
 int archive_write_free (struct archive*) ;
 scalar_t__ archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 scalar_t__ archive_write_open_memory (struct archive*,char*,int,size_t*) ;
 scalar_t__ archive_write_set_bytes_per_block (struct archive*,int ) ;
 scalar_t__ archive_write_set_format_pax_restricted (struct archive*) ;
 int assert (int) ;
 int assertA (int) ;
 int assertEqualInt (int,int) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualString (char*,int ) ;
 int failure (char*,int,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static void
test_filename(const char *prefix, int dlen, int flen)
{
 char buff[8192];
 char filename[400];
 char dirname[400];
 struct archive_entry *ae;
 struct archive *a;
 size_t used;
 char *p;
 int i;

 p = filename;
 if (prefix) {
  strcpy(filename, prefix);
  p += strlen(p);
 }
 if (dlen > 0) {
  for (i = 0; i < dlen; i++)
   *p++ = 'a';
  *p++ = '/';
 }
 for (i = 0; i < flen; i++)
  *p++ = 'b';
 *p = '\0';

 strcpy(dirname, filename);


 assert((a = archive_write_new()) != ((void*)0));
 assertA(0 == archive_write_set_format_pax_restricted(a));
 assertA(0 == archive_write_add_filter_none(a));
 assertA(0 == archive_write_set_bytes_per_block(a,0));
 assertA(0 == archive_write_open_memory(a, buff, sizeof(buff), &used));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_copy_pathname(ae, filename);
 archive_entry_set_mode(ae, S_IFREG | 0755);
 failure("Pathname %d/%d", dlen, flen);
 assertA(0 == archive_write_header(a, ae));
 archive_entry_free(ae);




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_copy_pathname(ae, dirname);
 archive_entry_set_mode(ae, S_IFDIR | 0755);
 failure("Dirname %d/%d", dlen, flen);
 assertA(0 == archive_write_header(a, ae));
 archive_entry_free(ae);


 strcat(dirname, "/");




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_copy_pathname(ae, dirname);
 archive_entry_set_mode(ae, S_IFDIR | 0755);
 failure("Dirname %d/%d", dlen, flen);
 assertA(0 == archive_write_header(a, ae));
 archive_entry_free(ae);


 assertEqualIntA(a, ARCHIVE_OK, archive_write_close(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));




 assert((a = archive_read_new()) != ((void*)0));
 assertA(0 == archive_read_support_format_all(a));
 assertA(0 == archive_read_support_filter_all(a));
 assertA(0 == archive_read_open_memory(a, buff, used));


 assertA(0 == archive_read_next_header(a, &ae));
 assertEqualString(filename, archive_entry_pathname(ae));
 assertEqualInt((S_IFREG | 0755), archive_entry_mode(ae));
 assertA(0 == archive_read_next_header(a, &ae));
 assertEqualString(dirname, archive_entry_pathname(ae));
 assert((S_IFDIR | 0755) == archive_entry_mode(ae));

 assertA(0 == archive_read_next_header(a, &ae));
 assertEqualString(dirname, archive_entry_pathname(ae));
 assert((S_IFDIR | 0755) == archive_entry_mode(ae));


 assert(1 == archive_read_next_header(a, &ae));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
