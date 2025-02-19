
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
typedef struct archive archive ;


 int AE_IFREG ;
 int ARCHIVE_OK ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_pathname (struct archive_entry*,char*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data (struct archive*,char*,int) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_memory (struct archive*,char*,size_t) ;
 int archive_read_support_filter_none (struct archive*) ;
 int archive_read_support_format_raw (struct archive*) ;
 int archive_write_add_filter_b64encode (struct archive*) ;
 int archive_write_close (struct archive*) ;
 int archive_write_data (struct archive*,char*,int) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,char*,size_t,size_t*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualMem (char*,char*,int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int stub1 (struct archive*) ;

__attribute__((used)) static void
test_format(int (*set_format)(struct archive *))
{
 char filedata[64];
 struct archive_entry *ae;
 struct archive *a;
 size_t used;
 size_t buffsize = 1000000;
 char *buff;

 buff = malloc(buffsize);


 assert((a = archive_write_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, (*set_format)(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_add_filter_b64encode(a));
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
 assertEqualIntA(a, 37, archive_read_data(a, filedata, 64));
 assertEqualMem(filedata, "begin-base64 644 -\nMTIzNDU2NzgA\n====\n", 37);
 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));

 free(buff);
}
