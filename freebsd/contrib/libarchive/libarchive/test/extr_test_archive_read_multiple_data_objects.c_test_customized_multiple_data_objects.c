
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_txt ;
struct mydata {char* filename; int fd; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int buff ;


 int ARCHIVE_OK ;
 scalar_t__ archive_entry_atime (struct archive_entry*) ;
 scalar_t__ archive_entry_ctime (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 scalar_t__ archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_entry_symlink (struct archive_entry*) ;
 int archive_file_count (struct archive*) ;
 scalar_t__ archive_read_append_callback_data (struct archive*,struct mydata*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data (struct archive*,char*,int) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 scalar_t__ archive_read_open1 (struct archive*) ;
 scalar_t__ archive_read_set_close_callback (struct archive*,int ) ;
 scalar_t__ archive_read_set_open_callback (struct archive*,int ) ;
 scalar_t__ archive_read_set_read_callback (struct archive*,int ) ;
 scalar_t__ archive_read_set_seek_callback (struct archive*,int ) ;
 scalar_t__ archive_read_set_skip_callback (struct archive*,int ) ;
 scalar_t__ archive_read_set_switch_callback (struct archive*,int ) ;
 scalar_t__ archive_read_support_filter_all (struct archive*) ;
 scalar_t__ archive_read_support_format_all (struct archive*) ;
 int assert (int ) ;
 int assertA (int) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualMem (char*,char const*,int) ;
 int assertEqualString (char*,int ) ;
 scalar_t__ calloc (int,int) ;
 int extract_reference_files (char const**) ;
 int file_close ;
 int file_open ;
 int file_read ;
 int file_seek ;
 int file_skip ;
 int file_switch ;
 int free (struct mydata*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
test_customized_multiple_data_objects(void)
{
  char buff[64];
  static const char *reffiles[] =
  {
    "test_read_splitted_rar_aa",
    "test_read_splitted_rar_ab",
    "test_read_splitted_rar_ac",
    "test_read_splitted_rar_ad",
    ((void*)0)
  };
  const char test_txt[] = "test text document\r\n";
  int size = sizeof(test_txt)-1;
  struct archive_entry *ae;
  struct archive *a;
  struct mydata *mydata;
  const char *filename = *reffiles;
  int i;

  extract_reference_files(reffiles);
  assert((a = archive_read_new()) != ((void*)0));
  assertA(0 == archive_read_support_filter_all(a));
  assertA(0 == archive_read_support_format_all(a));

  for (i = 0; filename != ((void*)0);)
  {
    assert((mydata = (struct mydata *)calloc(1, sizeof(*mydata))) != ((void*)0));
    if (mydata == ((void*)0)) {
      assertEqualInt(ARCHIVE_OK, archive_read_free(a));
      return;
    }
    assert((mydata->filename =
      (char *)calloc(1, strlen(filename) + 1)) != ((void*)0));
    if (mydata->filename == ((void*)0)) {
      free(mydata);
      assertEqualInt(ARCHIVE_OK, archive_read_free(a));
      return;
    }
    strcpy(mydata->filename, filename);
    mydata->fd = -1;
    filename = reffiles[++i];
    assertA(0 == archive_read_append_callback_data(a, mydata));
  }
 assertA(0 == archive_read_set_open_callback(a, file_open));
 assertA(0 == archive_read_set_read_callback(a, file_read));
 assertA(0 == archive_read_set_skip_callback(a, file_skip));
 assertA(0 == archive_read_set_close_callback(a, file_close));
 assertA(0 == archive_read_set_switch_callback(a, file_switch));
  assertA(0 == archive_read_set_seek_callback(a, file_seek));
  assertA(0 == archive_read_open1(a));


  assertA(0 == archive_read_next_header(a, &ae));
  assertEqualString("test.txt", archive_entry_pathname(ae));
  assertA((int)archive_entry_mtime(ae));
  assertA((int)archive_entry_ctime(ae));
  assertA((int)archive_entry_atime(ae));
  assertEqualInt(20, archive_entry_size(ae));
  assertEqualInt(33188, archive_entry_mode(ae));
  assertA(size == archive_read_data(a, buff, size));
  assertEqualMem(buff, test_txt, size);


  assertA(0 == archive_read_next_header(a, &ae));
  assertEqualString("testlink", archive_entry_pathname(ae));
  assertA((int)archive_entry_mtime(ae));
  assertA((int)archive_entry_ctime(ae));
  assertA((int)archive_entry_atime(ae));
  assertEqualInt(0, archive_entry_size(ae));
  assertEqualInt(41471, archive_entry_mode(ae));
  assertEqualString("test.txt", archive_entry_symlink(ae));
  assertEqualIntA(a, 0, archive_read_data(a, buff, sizeof(buff)));


  assertA(0 == archive_read_next_header(a, &ae));
  assertEqualString("testdir/test.txt", archive_entry_pathname(ae));
  assertA((int)archive_entry_mtime(ae));
  assertA((int)archive_entry_ctime(ae));
  assertA((int)archive_entry_atime(ae));
  assertEqualInt(20, archive_entry_size(ae));
  assertEqualInt(33188, archive_entry_mode(ae));
  assertA(size == archive_read_data(a, buff, size));
  assertEqualMem(buff, test_txt, size);


  assertA(0 == archive_read_next_header(a, &ae));
  assertEqualString("testdir", archive_entry_pathname(ae));
  assertA((int)archive_entry_mtime(ae));
  assertA((int)archive_entry_ctime(ae));
  assertA((int)archive_entry_atime(ae));
  assertEqualInt(0, archive_entry_size(ae));
  assertEqualInt(16877, archive_entry_mode(ae));


  assertA(0 == archive_read_next_header(a, &ae));
  assertEqualString("testemptydir", archive_entry_pathname(ae));
  assertA((int)archive_entry_mtime(ae));
  assertA((int)archive_entry_ctime(ae));
  assertA((int)archive_entry_atime(ae));
  assertEqualInt(0, archive_entry_size(ae));
  assertEqualInt(16877, archive_entry_mode(ae));


  assertA(1 == archive_read_next_header(a, &ae));
  assertEqualInt(5, archive_file_count(a));
  assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
  assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
