
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFDIR ;
 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_FILTER_NONE ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_entry_atime (struct archive_entry*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_ctime (struct archive_entry*) ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_atime (struct archive_entry*,int,int ) ;
 int archive_entry_set_ctime (struct archive_entry*,int,int ) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_mtime (struct archive_entry*,int,int ) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int archive_write_add_filter_none (struct archive*) ;
 int archive_write_close (struct archive*) ;
 int archive_write_data (struct archive*,char*,int) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,char*,size_t,size_t*) ;
 int archive_write_set_format_by_name (struct archive*,char const*) ;
 int archive_write_set_format_option (struct archive*,char const*,char*,char const*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualMem (char*,void const*,size_t) ;
 int assertEqualString (char*,int ) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int read_open_memory_seek (struct archive*,char*,size_t,int) ;
 int skipping (char*,char const*) ;

__attribute__((used)) static void
test_format_by_name(const char *format_name, const char *compression_type,
    int format_id, int dot_stored, const void *image, size_t image_size)
{
 struct archive_entry *ae;
 struct archive *a;
 size_t used;
 size_t buffsize = 1024 * 1024;
 char *buff;
 int r;

 assert((buff = malloc(buffsize)) != ((void*)0));
 if (buff == ((void*)0))
  return;


 assert((a = archive_write_new()) != ((void*)0));
 r = archive_write_set_format_by_name(a, format_name);
 if (r == ARCHIVE_WARN) {
  skipping("%s format not fully supported on this platform",
     compression_type);
  assertEqualInt(ARCHIVE_OK, archive_write_free(a));
  free(buff);
  return;
 }
 assertEqualIntA(a, ARCHIVE_OK, r);
 if (compression_type != ((void*)0) &&
     ARCHIVE_OK != archive_write_set_format_option(a, format_name,
     "compression", compression_type)) {
  skipping("%s writing not fully supported on this platform",
     compression_type);
  assertEqualInt(ARCHIVE_OK, archive_write_free(a));
  free(buff);
  return;
 }
 assertEqualIntA(a, ARCHIVE_OK, archive_write_add_filter_none(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_open_memory(a, buff, buffsize, &used));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_mtime(ae, 1, 0);
 assertEqualInt(1, archive_entry_mtime(ae));
 archive_entry_set_ctime(ae, 1, 0);
 assertEqualInt(1, archive_entry_ctime(ae));
 archive_entry_set_atime(ae, 1, 0);
 assertEqualInt(1, archive_entry_atime(ae));
 archive_entry_copy_pathname(ae, "file");
 assertEqualString("file", archive_entry_pathname(ae));
 archive_entry_set_mode(ae, AE_IFREG | 0755);
 assertEqualInt((AE_IFREG | 0755), archive_entry_mode(ae));
 archive_entry_set_size(ae, 8);
 assertEqualInt(0, archive_write_header(a, ae));
 archive_entry_free(ae);
 assertEqualInt(8, archive_write_data(a, "12345678", 8));


 assertEqualIntA(a, ARCHIVE_OK, archive_write_close(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));

 if (image && image_size > 0) {
  assertEqualMem(buff, image, image_size);
 }
 if (format_id > 0) {




  assert((a = archive_read_new()) != ((void*)0));
  assertEqualIntA(a, ARCHIVE_OK,
      archive_read_support_format_all(a));
  assertEqualIntA(a, ARCHIVE_OK,
      archive_read_support_filter_all(a));
  assertEqualIntA(a, ARCHIVE_OK,
      read_open_memory_seek(a, buff, used, 7));

  if (dot_stored & 1) {
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_next_header(a, &ae));
   assertEqualString(".", archive_entry_pathname(ae));
   assertEqualInt(AE_IFDIR, archive_entry_filetype(ae));
  }



  assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
  assertEqualInt(1, archive_entry_mtime(ae));
  if (dot_stored & 2) {
   assertEqualString("./file", archive_entry_pathname(ae));
  } else {
   assertEqualString("file", archive_entry_pathname(ae));
  }
  assertEqualInt(AE_IFREG, archive_entry_filetype(ae));
  assertEqualInt(8, archive_entry_size(ae));


  assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));


  assertEqualIntA(a, ARCHIVE_FILTER_NONE,
      archive_filter_code(a, 0));
  assertEqualIntA(a, format_id, archive_format(a));

  assertEqualInt(ARCHIVE_OK, archive_read_close(a));
  assertEqualInt(ARCHIVE_OK, archive_read_free(a));
 }
 free(buff);
}
