
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef scalar_t__ int64_t ;


 int AE_IFDIR ;
 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int PATH_MAX ;
 char* _wgetcwd (int *,int ) ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 char* archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_pathname_w (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data_block (struct archive*,void const**,size_t*,scalar_t__*) ;
 int archive_read_disk_can_descend (struct archive*) ;
 int archive_read_disk_descend (struct archive*) ;
 struct archive* archive_read_disk_new () ;
 int archive_read_disk_open (struct archive*,char*) ;
 int archive_read_disk_open_w (struct archive*,char*) ;
 int archive_read_free (struct archive*) ;
 int archive_read_next_header2 (struct archive*,struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int,int) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualMem (void const*,char*,int) ;
 int assertEqualString (char*,char*) ;
 int assertEqualWString (int ,char*) ;
 int assertMakeDir (char*,int) ;
 int assertMakeFile (char*,int,char*) ;
 int failure (char*) ;
 int free (char*) ;
 char* getcwd (int *,int ) ;
 char* malloc (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int wcscat (char*,char*) ;
 char* wcschr (char*,int) ;
 scalar_t__ wcscmp (int ,char*) ;
 int wcscpy (char*,char*) ;
 int wcslen (char*) ;
 char* wcsrchr (char*,int) ;

__attribute__((used)) static void
test_basic(void)
{
 struct archive *a;
 struct archive_entry *ae;
 const void *p;
 char *initial_cwd, *cwd;
 size_t size;
 int64_t offset;
 int file_count;




 assertMakeDir("dir1", 0755);
 assertMakeFile("dir1/file1", 0644, "0123456789");
 assertMakeFile("dir1/file2", 0644, "hello world");
 assertMakeDir("dir1/sub1", 0755);
 assertMakeFile("dir1/sub1/file1", 0644, "0123456789");
 assertMakeDir("dir1/sub2", 0755);
 assertMakeFile("dir1/sub2/file1", 0644, "0123456789");
 assertMakeFile("dir1/sub2/file2", 0644, "0123456789");
 assertMakeDir("dir1/sub2/sub1", 0755);
 assertMakeDir("dir1/sub2/sub2", 0755);
 assertMakeDir("dir1/sub2/sub3", 0755);
 assertMakeFile("dir1/sub2/sub3/file", 0644, "xyz");
 file_count = 12;

 assert((ae = archive_entry_new()) != ((void*)0));
 assert((a = archive_read_disk_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_open(a, "dir1"));

 while (file_count--) {
  assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
  if (strcmp(archive_entry_pathname(ae), "dir1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/file1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 10);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 10);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "0123456789", 10);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 10);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/file2") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 11);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 11);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "hello world", 11);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 11);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/sub1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/sub1/file1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 10);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 10);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "0123456789", 10);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 10);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/sub2") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/sub2/file1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 10);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 10);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "0123456789", 10);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 10);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/sub2/file2") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 10);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 10);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "0123456789", 10);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 10);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/sub2/sub1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/sub2/sub2") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/sub2/sub3") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (strcmp(archive_entry_pathname(ae),
      "dir1/sub2/sub3/file") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 3);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 3);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "xyz", 3);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 3);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  }
  if (archive_entry_filetype(ae) == AE_IFDIR) {

   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_disk_descend(a));
  }
 }

 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header2(a, ae));


 assertEqualInt(ARCHIVE_OK, archive_read_close(a));




 assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_open_w(a, L"dir1"));

 file_count = 12;
 while (file_count--) {
  assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
  if (wcscmp(archive_entry_pathname_w(ae), L"dir1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/file1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 10);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 10);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "0123456789", 10);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 10);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/file2") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 11);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 11);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "hello world", 11);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 11);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/sub1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/sub1/file1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 10);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 10);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "0123456789", 10);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 10);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/sub2") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/sub2/file1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 10);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 10);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "0123456789", 10);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 10);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/sub2/file2") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 10);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 10);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "0123456789", 10);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 10);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/sub2/sub1") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/sub2/sub2") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/sub2/sub3") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
   assertEqualInt(1, archive_read_disk_can_descend(a));
  } else if (wcscmp(archive_entry_pathname_w(ae),
      L"dir1/sub2/sub3/file") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 3);
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 3);
   assertEqualInt((int)offset, 0);
   assertEqualMem(p, "xyz", 3);
   assertEqualInt(ARCHIVE_EOF,
       archive_read_data_block(a, &p, &size, &offset));
   assertEqualInt((int)size, 0);
   assertEqualInt((int)offset, 3);
   assertEqualInt(0, archive_read_disk_can_descend(a));
  }
  if (archive_entry_filetype(ae) == AE_IFDIR) {

   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_disk_descend(a));
  }
 }

 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header2(a, ae));


 assertEqualInt(ARCHIVE_OK, archive_read_close(a));




 assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_open(a, "dir1/file1"));


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
 assertEqualInt(0, archive_read_disk_can_descend(a));
 assertEqualString(archive_entry_pathname(ae), "dir1/file1");
 assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
 assertEqualInt(archive_entry_size(ae), 10);
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_data_block(a, &p, &size, &offset));
 assertEqualInt((int)size, 10);
 assertEqualInt((int)offset, 0);
 assertEqualMem(p, "0123456789", 10);


 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header2(a, ae));


 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 initial_cwd = getcwd(((void*)0), 0);


 assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_open(a, "dir1"));


 file_count = 12;
 while (file_count--) {
  assertEqualIntA(a, ARCHIVE_OK,
      archive_read_next_header2(a, ae));
  if (strcmp(archive_entry_pathname(ae),
      "dir1/sub1/file1") == 0)



   break;
  if (archive_entry_filetype(ae) == AE_IFDIR) {

   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_disk_descend(a));
  }
 }

 assertEqualInt(ARCHIVE_OK, archive_read_free(a));


 failure(
     "Current working directory does not return to the initial"
     "directory");



 cwd = getcwd(((void*)0), 0);

 assertEqualString(initial_cwd, cwd);
 free(initial_cwd);
 free(cwd);

 archive_entry_free(ae);
}
