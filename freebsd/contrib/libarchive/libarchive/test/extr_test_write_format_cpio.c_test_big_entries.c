
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
typedef struct archive archive ;
typedef int int64_t ;


 int AE_IFREG ;
 int ARCHIVE_OK ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,int ) ;
 int * archive_error_string (struct archive*) ;
 scalar_t__ archive_write_add_filter_none (struct archive*) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 scalar_t__ archive_write_open_memory (struct archive*,char*,size_t,size_t*) ;
 int assert (int ) ;
 int assertA (int) ;
 int assertEqualInt (int,int ) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int stub1 (struct archive*) ;

__attribute__((used)) static void
test_big_entries(int (*set_format)(struct archive *), int64_t size, int expected)
{
 struct archive_entry *ae;
 struct archive *a;
 size_t buffsize = 1000000;
 size_t used;
 char *buff;

 buff = malloc(buffsize);


 assert((a = archive_write_new()) != ((void*)0));
 assertA(0 == (*set_format)(a));
 assertA(0 == archive_write_add_filter_none(a));
 assertA(0 == archive_write_open_memory(a, buff, buffsize, &used));

 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_copy_pathname(ae, "file");
 archive_entry_set_size(ae, size);
 archive_entry_set_filetype(ae, AE_IFREG);
 assertEqualInt(expected, archive_write_header(a, ae));
 if (expected != ARCHIVE_OK)
  assert(archive_error_string(a) != ((void*)0));

 archive_entry_free(ae);
 archive_write_free(a);
 free(buff);
}
