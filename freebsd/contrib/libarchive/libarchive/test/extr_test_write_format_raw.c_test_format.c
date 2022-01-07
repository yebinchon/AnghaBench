
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
typedef struct archive archive ;


 int AE_IFDIR ;
 int AE_IFREG ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_pathname (struct archive_entry*,char*) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 char* archive_error_string (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data (struct archive*,char*,int) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_memory (struct archive*,char*,size_t) ;
 int archive_read_support_filter_none (struct archive*) ;
 int archive_read_support_format_raw (struct archive*) ;
 int archive_write_add_filter_none (struct archive*) ;
 int archive_write_close (struct archive*) ;
 int archive_write_data (struct archive*,char*,int) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,char*,size_t,size_t*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualMem (char const*,char*,int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int stub1 (struct archive*) ;
 int stub2 (struct archive*) ;
 int stub3 (struct archive*) ;

__attribute__((used)) static void
test_format(int (*set_format)(struct archive *))
{
 char filedata[64];
 struct archive_entry *ae;
 struct archive *a;
 size_t used;
 size_t buffsize = 1000000;
 char *buff;
 const char *err;

 buff = malloc(buffsize);


 assert((a = archive_write_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, (*set_format)(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_add_filter_none(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_open_memory(a, buff, buffsize, &used));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_pathname(ae, "test");
 archive_entry_set_filetype(ae, AE_IFREG);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
 assertEqualIntA(a, 9, archive_write_data(a, "12345678", 9));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_close(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));




 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_raw(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_none(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_open_memory(a, buff, used));

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualIntA(a, 9, archive_read_data(a, filedata, 10));
 assertEqualMem(filedata, "12345678", 9);
 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));


 assert((a = archive_write_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, (*set_format)(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_add_filter_none(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_open_memory(a, buff, buffsize, &used));


 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_pathname(ae, "test");
 archive_entry_set_filetype(ae, AE_IFREG);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
 assertEqualIntA(a, 9, archive_write_data(a, "12345678", 9));


 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_pathname(ae, "test2");
 archive_entry_set_filetype(ae, AE_IFREG);
 assertEqualIntA(a, ARCHIVE_FATAL, archive_write_header(a, ae));
 err = archive_error_string(a);
 assertEqualMem(err, "Raw format only supports one entry per archive", 47);
 archive_entry_free(ae);

 assertEqualIntA(a, ARCHIVE_OK, archive_write_close(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));


 assert((a = archive_write_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, (*set_format)(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_add_filter_none(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_open_memory(a, buff, buffsize, &used));


 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_copy_pathname(ae, "dir");
 archive_entry_set_filetype(ae, AE_IFDIR);
 archive_entry_set_size(ae, 512);
 assertEqualIntA(a, ARCHIVE_FATAL, archive_write_header(a, ae));
 err = archive_error_string(a);
 assertEqualMem(err, "Raw format only supports filetype AE_IFREG", 43);
 archive_entry_free(ae);

 assertEqualIntA(a, ARCHIVE_OK, archive_write_close(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));

 free(buff);
}
