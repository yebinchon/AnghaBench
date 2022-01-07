
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFDIR ;
 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_BASE_MASK ;
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
 int archive_error_string (struct archive*) ;
 int archive_filter_code (struct archive*,int ) ;
 char* archive_filter_name (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 char const* archive_format_name (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int archive_write_close (struct archive*) ;
 int archive_write_data (struct archive*,char*,int) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,char*,size_t,size_t*) ;
 int archive_write_set_format_filter_by_ext (struct archive*,char const*) ;
 int archive_write_set_format_filter_by_ext_def (struct archive*,char const*,char*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualString (char*,int ) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int read_open_memory_seek (struct archive*,char*,size_t,int) ;
 int skipping (char*,char const*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
test_format_filter_by_ext(const char *output_file,
    int format_id, int filter_id, int dot_stored, char * def_ext)
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
 if( def_ext == ((void*)0))
          r = archive_write_set_format_filter_by_ext(a, output_file);
        else
          r = archive_write_set_format_filter_by_ext_def(a, output_file, def_ext);
 if (r == ARCHIVE_WARN) {
  skipping("%s format not fully supported on this platform",
     archive_format_name(a));
  assertEqualInt(ARCHIVE_OK, archive_write_free(a));
  free(buff);
  return;
        } else if (r == ARCHIVE_FATAL &&
     (strcmp(archive_error_string(a),
     "lzma compression not supported on this platform") == 0 ||
      strcmp(archive_error_string(a),
     "xz compression not supported on this platform") == 0)) {
                const char *filter_name = archive_filter_name(a, 0);
  skipping("%s filter not supported on this platform", filter_name);
  assertEqualInt(ARCHIVE_OK, archive_write_free(a));
  free(buff);
  return;
 } else {
  if (!assertEqualIntA(a, ARCHIVE_OK, r)) {
   assertEqualInt(ARCHIVE_OK, archive_write_free(a));
   free(buff);
   return;
  }
 }

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


  assertEqualIntA(a, filter_id,
      archive_filter_code(a, 0));
  assertEqualIntA(a, format_id, archive_format(a) & ARCHIVE_FORMAT_BASE_MASK );

  assertEqualInt(ARCHIVE_OK, archive_read_close(a));
  assertEqualInt(ARCHIVE_OK, archive_read_free(a));
 }
 free(buff);
}
