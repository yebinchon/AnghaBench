
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef scalar_t__ int64_t ;


 int AE_IFDIR ;
 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int archive_entry_clear (struct archive_entry*) ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_match_exclude_pattern (struct archive*,char*) ;
 int archive_match_free (struct archive*) ;
 struct archive* archive_match_new () ;
 int archive_read_close (struct archive*) ;
 int archive_read_data_block (struct archive*,void const**,size_t*,scalar_t__*) ;
 scalar_t__ archive_read_disk_can_descend (struct archive*) ;
 int archive_read_disk_descend (struct archive*) ;
 struct archive* archive_read_disk_new () ;
 int archive_read_disk_open (struct archive*,char*) ;
 int archive_read_disk_set_matching (struct archive*,struct archive*,int *,int *) ;
 int archive_read_disk_set_metadata_filter_callback (struct archive*,int ,int *) ;
 int archive_read_free (struct archive*) ;
 int archive_read_next_header2 (struct archive*,struct archive_entry*) ;
 int assert (int) ;
 int assertEqualInt (int,int) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualMem (void const*,char*,int) ;
 int assertMakeDir (char*,int) ;
 int assertMakeFile (char*,int,char*) ;
 int assertUtimes (char*,int,int ,int,int ) ;
 int failure (char*) ;
 int metadata_filter ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
test_callbacks(void)
{
 struct archive *a;
 struct archive *m;
 struct archive_entry *ae;
 const void *p;
 size_t size;
 int64_t offset;
 int file_count;

 assertMakeDir("cb", 0755);
 assertMakeFile("cb/f1", 0644, "0123456789");
 assertMakeFile("cb/f2", 0644, "hello world");
 assertMakeFile("cb/fe", 0644, ((void*)0));
 assertUtimes("cb/f1", 886600, 0, 886600, 0);
 assertUtimes("cb/f2", 886611, 0, 886611, 0);
 assertUtimes("cb/fe", 886611, 0, 886611, 0);
 assertUtimes("cb", 886622, 0, 886622, 0);

 assert((ae = archive_entry_new()) != ((void*)0));
 assert((a = archive_read_disk_new()) != ((void*)0));
 if (a == ((void*)0)) {
  archive_entry_free(ae);
  return;
 }
 assert((m = archive_match_new()) != ((void*)0));
 if (m == ((void*)0)) {
  archive_entry_free(ae);
  archive_read_free(a);
  archive_match_free(m);
  return;
 }




 file_count = 3;
 assertEqualIntA(m, ARCHIVE_OK,
     archive_match_exclude_pattern(m, "cb/f2"));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_disk_set_matching(a, m, ((void*)0), ((void*)0)));
 failure("Directory traversals should work as well");
 assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_open(a, "cb"));
 while (file_count--) {
  archive_entry_clear(ae);
  assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
  failure("File 'cb/f2' should be exclueded");
  assert(strcmp(archive_entry_pathname(ae), "cb/f2") != 0);
  if (strcmp(archive_entry_pathname(ae), "cb") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
  } else if (strcmp(archive_entry_pathname(ae), "cb/f1") == 0) {
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
  } else if (strcmp(archive_entry_pathname(ae), "cb/fe") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 0);
  }
  if (archive_read_disk_can_descend(a)) {

   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_disk_descend(a));
  }
 }

 failure("There should be no entry");
 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header2(a, ae));


 assertEqualInt(ARCHIVE_OK, archive_read_close(a));


 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_disk_set_matching(a, ((void*)0), ((void*)0), ((void*)0)));




 assertUtimes("cb/f1", 886600, 0, 886600, 0);
 assertUtimes("cb/f2", 886611, 0, 886611, 0);
 assertUtimes("cb/fe", 886611, 0, 886611, 0);
 assertUtimes("cb", 886622, 0, 886622, 0);
 file_count = 3;
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_disk_set_metadata_filter_callback(a, metadata_filter,
      ((void*)0)));
 failure("Directory traversals should work as well");
 assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_open(a, "cb"));

 while (file_count--) {
  archive_entry_clear(ae);
  assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
  failure("File 'cb/f1' should be excluded");
  assert(strcmp(archive_entry_pathname(ae), "cb/f1") != 0);
  if (strcmp(archive_entry_pathname(ae), "cb") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
  } else if (strcmp(archive_entry_pathname(ae), "cb/f2") == 0) {
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
  } else if (strcmp(archive_entry_pathname(ae), "cb/fe") == 0) {
   assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
   assertEqualInt(archive_entry_size(ae), 0);
  }
 }

 failure("There should be no entry");
 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header2(a, ae));


 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
 assertEqualInt(ARCHIVE_OK, archive_match_free(m));
 archive_entry_free(ae);
}
