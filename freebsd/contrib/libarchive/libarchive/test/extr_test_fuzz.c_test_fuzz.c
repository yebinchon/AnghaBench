
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files {int ** names; scalar_t__ uncompress; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int int64_t ;
typedef int FILE ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int Sleep (int) ;
 int archive_read_close (struct archive*) ;
 size_t archive_read_data (struct archive*,char*,size_t const) ;
 scalar_t__ archive_read_data_block (struct archive*,void const**,size_t*,int *) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 scalar_t__ archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filenames (struct archive*,int **,int) ;
 scalar_t__ archive_read_open_memory (struct archive*,char*,size_t) ;
 scalar_t__ archive_read_support_filter_all (struct archive*) ;
 scalar_t__ archive_read_support_format_all (struct archive*) ;
 scalar_t__ archive_read_support_format_raw (struct archive*) ;
 int assert (int) ;
 int assertEqualInt (size_t,int ) ;
 int assertEqualIntA (struct archive*,int,scalar_t__) ;
 int extract_reference_files (int **) ;
 int failure (char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int fwrite (char*,int,size_t,int *) ;
 char* getenv (char*) ;
 char* malloc (size_t const) ;
 int memcpy (char*,char*,size_t) ;
 size_t rand () ;
 char* realloc (char*,size_t) ;
 int skipping (char*,...) ;
 char* slurpfile (size_t*,int *) ;
 int srand (unsigned int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
test_fuzz(const struct files *filesets)
{
 const void *blk;
 size_t blk_size;
 int64_t blk_offset;
 int n;
 const char *skip_fuzz_tests;

 skip_fuzz_tests = getenv("SKIP_TEST_FUZZ");
 if (skip_fuzz_tests != ((void*)0)) {
  skipping("Skipping fuzz tests due to SKIP_TEST_FUZZ "
      "environment variable");
  return;
 }

 for (n = 0; filesets[n].names != ((void*)0); ++n) {
  const size_t buffsize = 30000000;
  struct archive_entry *ae;
  struct archive *a;
  char *rawimage = ((void*)0), *image = ((void*)0), *tmp = ((void*)0);
  size_t size = 0, oldsize = 0;
  int i, q;

  extract_reference_files(filesets[n].names);
  if (filesets[n].uncompress) {
   int r;

   assert((a = archive_read_new()) != ((void*)0));
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_support_filter_all(a));
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_support_format_raw(a));
   r = archive_read_open_filenames(a, filesets[n].names, 16384);
   if (r != ARCHIVE_OK) {
    archive_read_free(a);
    if (filesets[n].names[0] == ((void*)0) || filesets[n].names[1] == ((void*)0)) {
     skipping("Cannot uncompress fileset");
    } else {
     skipping("Cannot uncompress %s", filesets[n].names[0]);
    }
    continue;
   }
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_next_header(a, &ae));
   rawimage = malloc(buffsize);
   size = archive_read_data(a, rawimage, buffsize);
   assertEqualIntA(a, ARCHIVE_EOF,
       archive_read_next_header(a, &ae));
   assertEqualInt(ARCHIVE_OK,
       archive_read_free(a));
   assert(size > 0);
   if (filesets[n].names[0] == ((void*)0) || filesets[n].names[1] == ((void*)0)) {
    failure("Internal buffer is not big enough for "
     "uncompressed test files");
   } else {
    failure("Internal buffer is not big enough for "
     "uncompressed test file: %s", filesets[n].names[0]);
   }
   if (!assert(size < buffsize)) {
    free(rawimage);
    rawimage = ((void*)0);
    continue;
   }
  } else {
   for (i = 0; filesets[n].names[i] != ((void*)0); ++i)
   {
    char *newraw;
    tmp = slurpfile(&size, filesets[n].names[i]);
    newraw = realloc(rawimage, oldsize + size);
    if (!assert(newraw != ((void*)0)))
    {
     free(rawimage);
     rawimage = ((void*)0);
     free(tmp);
     continue;
    }
    rawimage = newraw;
    memcpy(rawimage + oldsize, tmp, size);
    oldsize += size;
    size = oldsize;
    free(tmp);
   }
  }
  if (size == 0) {
   free(rawimage);
   rawimage = ((void*)0);
   continue;
  }
  image = malloc(size);
  assert(image != ((void*)0));
  if (image == ((void*)0)) {
   free(rawimage);
   rawimage = ((void*)0);
   return;
  }

  assert(rawimage != ((void*)0));

  srand((unsigned)time(((void*)0)));

  for (i = 0; i < 1000; ++i) {
   FILE *f;
   int j, numbytes, trycnt;


   memcpy(image, rawimage, size);
   q = (int)size / 100;
   if (q < 4)
    q = 4;
   numbytes = (int)(rand() % q);
   for (j = 0; j < numbytes; ++j)
    image[rand() % size] = (char)rand();



   for (trycnt = 0; trycnt < 3; trycnt++) {
    f = fopen("after.test.failure.send.this.file."
        "to.libarchive.maintainers.with.system.details", "wb");
    if (f != ((void*)0))
     break;
   }
   assert(f != ((void*)0));
   assertEqualInt((size_t)size, fwrite(image, 1, (size_t)size, f));
   fclose(f);


   assert((a = archive_read_new()) != ((void*)0));
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_support_filter_all(a));
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_support_format_all(a));

   if (0 == archive_read_open_memory(a, image, size)) {
    while(0 == archive_read_next_header(a, &ae)) {
     while (0 == archive_read_data_block(a,
      &blk, &blk_size, &blk_offset))
      continue;
    }
    archive_read_close(a);
   }
   archive_read_free(a);


   assert((a = archive_read_new()) != ((void*)0));
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_support_filter_all(a));
   assertEqualIntA(a, ARCHIVE_OK,
       archive_read_support_format_all(a));

   if (0 == archive_read_open_memory(a, image, size)) {
    while(0 == archive_read_next_header(a, &ae)) {
    }
    archive_read_close(a);
   }
   archive_read_free(a);
  }
  free(image);
  free(rawimage);
 }
}
