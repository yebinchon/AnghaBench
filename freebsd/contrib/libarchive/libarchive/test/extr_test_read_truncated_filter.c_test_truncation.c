
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
typedef struct archive archive ;


 int AE_IFREG ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,size_t) ;
 int * archive_error_string (struct archive*) ;
 int archive_read_close (struct archive*) ;
 scalar_t__ archive_read_data (struct archive*,char*,size_t) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_memory (struct archive*,char*,size_t) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int archive_write_add_filter_compress (struct archive*) ;
 int archive_write_close (struct archive*) ;
 int archive_write_data (struct archive*,char*,size_t) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,char*,size_t,size_t*) ;
 int archive_write_set_bytes_per_block (struct archive*,int) ;
 int archive_write_set_format_ustar (struct archive*) ;
 int assert (int) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualString (char*,int ) ;
 int failure (char*,...) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int memset (char*,int ,size_t) ;
 int rand () ;
 int skipping (char*,char const*) ;
 int sprintf (char*,char*,char const*,int) ;
 int stub1 (struct archive*) ;

__attribute__((used)) static void
test_truncation(const char *compression,
    int (*set_compression)(struct archive *), int can_prog)
{
 struct archive_entry *ae;
 struct archive* a;
 char path[16];
 char *buff, *data;
 size_t buffsize, datasize, used1;
 int i, j, r, use_prog;

 buffsize = 2000000;
 assert(((void*)0) != (buff = (char *)malloc(buffsize)));
 if (buff == ((void*)0))
  return;

 datasize = 10000;
 assert(((void*)0) != (data = (char *)malloc(datasize)));
 if (data == ((void*)0)) {
  free(buff);
  return;
 }
 memset(data, 0, datasize);




 assert((a = archive_write_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_set_format_ustar(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_add_filter_compress(a));
 r = (*set_compression)(a);
 if (r != ARCHIVE_OK && !can_prog) {
  skipping("%s writing not supported on this platform",
      compression);
  assertEqualInt(ARCHIVE_OK, archive_write_free(a));
  free(buff);
  free(data);
  return;
 }
 use_prog = (r == ARCHIVE_WARN && can_prog);
 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_set_bytes_per_block(a, 10));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_open_memory(a, buff, buffsize, &used1));
 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_filetype(ae, AE_IFREG);
 archive_entry_set_size(ae, datasize);
 for (i = 0; i < 100; i++) {
  sprintf(path, "%s%d", compression, i);
  archive_entry_copy_pathname(ae, path);
  failure(path);
  if (!assertEqualIntA(a, ARCHIVE_OK,
      archive_write_header(a, ae))) {
   archive_write_free(a);
   free(data);
   free(buff);
   return;
  }
  for (j = 0; j < (int)datasize; ++j) {
   data[j] = (char)(rand() % 256);
  }
  failure(path);
  if (!assertEqualIntA(a, datasize,
      archive_write_data(a, data, datasize))) {
   archive_write_free(a);
   free(data);
   free(buff);
   return;
  }
 }
 archive_entry_free(ae);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_close(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));

 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));

 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_open_memory(a, buff, used1 - used1/64));
 for (i = 0; i < 100; i++) {
  if (ARCHIVE_OK != archive_read_next_header(a, &ae)) {
   failure("Should have non-NULL error message for %s",
       compression);
   assert(((void*)0) != archive_error_string(a));
   break;
  }
  sprintf(path, "%s%d", compression, i);
  assertEqualString(path, archive_entry_pathname(ae));
  if (datasize != (size_t)archive_read_data(a, data, datasize)) {
   failure("Should have non-NULL error message for %s",
       compression);
   assert(((void*)0) != archive_error_string(a));
   break;
  }
 }
 assertEqualIntA(a, (use_prog)?ARCHIVE_WARN:ARCHIVE_OK,
     archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));

 free(data);
 free(buff);
}
