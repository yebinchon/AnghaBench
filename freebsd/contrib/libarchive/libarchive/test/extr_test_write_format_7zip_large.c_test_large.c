
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFREG ;
 size_t ARCHIVE_EOF ;
 size_t ARCHIVE_FILTER_NONE ;
 size_t ARCHIVE_FORMAT_7ZIP ;
 size_t ARCHIVE_OK ;
 int LARGE_SIZE ;
 int archive_entry_atime (struct archive_entry*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_ctime (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_mtime_nsec (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_mtime (struct archive_entry*,int,int) ;
 int archive_entry_set_size (struct archive_entry*,size_t) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data (struct archive*,char*,size_t) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int archive_write_add_filter_none (struct archive*) ;
 int archive_write_close (struct archive*) ;
 int archive_write_data (struct archive*,char*,size_t) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,char*,size_t,size_t*) ;
 int archive_write_set_format_7zip (struct archive*) ;
 size_t archive_write_set_format_option (struct archive*,char*,char*,char const*) ;
 int assert (int ) ;
 int assertEqualInt (size_t,int ) ;
 int assertEqualIntA (struct archive*,size_t,int ) ;
 int assertEqualMem (char*,char*,size_t) ;
 int assertEqualString (char*,int ) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memset (char*,char,size_t) ;
 scalar_t__ rand () ;
 int read_open_memory_seek (struct archive*,char*,size_t,int) ;
 int skipping (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
test_large(const char *compression_type)
{
 struct archive_entry *ae;
 struct archive *a;
 size_t used;
 size_t buffsize = LARGE_SIZE + 1024 * 256;
 size_t datasize = LARGE_SIZE;
 char *buff, *filedata, *filedata2;
 unsigned i;

 assert((buff = malloc(buffsize)) != ((void*)0));
 assert((filedata = malloc(datasize)) != ((void*)0));
 assert((filedata2 = malloc(datasize)) != ((void*)0));


 assert((a = archive_write_new()) != ((void*)0));
 if (a == ((void*)0) || buff == ((void*)0) || filedata == ((void*)0) || filedata2 == ((void*)0)) {
  archive_write_free(a);
  free(buff);
  free(filedata);
  free(filedata2);
  return;
 }
 assertEqualIntA(a, ARCHIVE_OK, archive_write_set_format_7zip(a));
 if (compression_type != ((void*)0) &&
     ARCHIVE_OK != archive_write_set_format_option(a, "7zip",
     "compression", compression_type)) {
  skipping("%s writing not fully supported on this platform",
     compression_type);
  assertEqualInt(ARCHIVE_OK, archive_write_free(a));
  free(buff);
  free(filedata);
  free(filedata2);
  return;
 }
 assertEqualIntA(a, ARCHIVE_OK, archive_write_add_filter_none(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_open_memory(a, buff, buffsize, &used));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 1, 100);
 assertEqualInt(1, archive_entry_mtime(ae));
 assertEqualInt(100, archive_entry_mtime_nsec(ae));
 archive_entry_copy_pathname(ae, "file");
 assertEqualString("file", archive_entry_pathname(ae));
 archive_entry_set_mode(ae, AE_IFREG | 0755);
 assertEqualInt((AE_IFREG | 0755), archive_entry_mode(ae));
 archive_entry_set_size(ae, datasize);

 assertEqualInt(0, archive_write_header(a, ae));
 archive_entry_free(ae);
 if (strcmp(compression_type, "ppmd") == 0) {

  memset(filedata, 'a', datasize);
 } else {
  for (i = 0; i < datasize; i++)
   filedata[i] = (char)rand();
 }
 assertEqualInt(datasize, archive_write_data(a, filedata, datasize));


 assertEqualIntA(a, ARCHIVE_OK, archive_write_close(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));


 assertEqualMem(buff, "\x37\x7a\xbc\xaf\x27\x1c\x00\x03", 8);





 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, read_open_memory_seek(a, buff, used, 7));




 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(1, archive_entry_mtime(ae));
 assertEqualInt(100, archive_entry_mtime_nsec(ae));
 assertEqualInt(0, archive_entry_atime(ae));
 assertEqualInt(0, archive_entry_ctime(ae));
 assertEqualString("file", archive_entry_pathname(ae));
 assertEqualInt(AE_IFREG | 0755, archive_entry_mode(ae));
 assertEqualInt(datasize, archive_entry_size(ae));
 assertEqualIntA(a, datasize, archive_read_data(a, filedata2, datasize));
 assertEqualMem(filedata, filedata2, datasize);


 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));


 assertEqualIntA(a, ARCHIVE_FILTER_NONE, archive_filter_code(a, 0));
 assertEqualIntA(a, ARCHIVE_FORMAT_7ZIP, archive_format(a));

 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));

 free(buff);
 free(filedata);
 free(filedata2);
}
