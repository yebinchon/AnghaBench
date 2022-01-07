
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int buff ;


 int AE_IFREG ;
 int ARCHIVE_OK ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_pathname (struct archive_entry*,char*) ;
 int archive_entry_set_size (struct archive_entry*,int ) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,char*,int,size_t*) ;
 int archive_write_set_format_option (struct archive*,char*,char*,int *) ;
 int archive_write_set_format_zip (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;

__attribute__((used)) static void
verify_zip_filesize(uint64_t size, int expected)
{
 struct archive *a;
 struct archive_entry *ae;
 char buff[256];
 size_t used;


 assert((a = archive_write_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_set_format_zip(a));

 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_set_format_option(a, "zip", "zip64", ((void*)0)));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_open_memory(a, buff, sizeof(buff), &used));

 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_pathname(ae, "test");
 archive_entry_set_mode(ae, AE_IFREG | 0644);
 archive_entry_set_size(ae, size);
 assertEqualInt(expected, archive_write_header(a, ae));

 archive_entry_free(ae);


 assertEqualIntA(a, ARCHIVE_OK, archive_write_free(a));
}
