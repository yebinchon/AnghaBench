
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparse {scalar_t__ size; scalar_t__ type; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ ARCHIVE_OK ;
 scalar_t__ DATA ;
 scalar_t__ END ;
 scalar_t__ HOLE ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 scalar_t__ archive_read_data_block (struct archive*,void const**,size_t*,scalar_t__*) ;
 int archive_read_disk_open (struct archive*,char const*) ;
 int archive_read_next_header2 (struct archive*,struct archive_entry*) ;
 int assert (int) ;
 int assertEqualInt (int,int) ;
 int assertEqualIntA (struct archive*,scalar_t__,int ) ;
 int assertMemoryFilledWith (char const*,int,char) ;
 int create_sparse_file (char const*,struct sparse const*) ;
 int failure (char const*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
verify_sparse_file(struct archive *a, const char *path,
    const struct sparse *sparse, int expected_holes)
{
 struct archive_entry *ae;
 const void *buff;
 size_t bytes_read;
 int64_t offset, expected_offset, last_offset;
 int holes_seen = 0;

 create_sparse_file(path, sparse);
 assert((ae = archive_entry_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_open(a, path));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));

 expected_offset = 0;
 last_offset = 0;
 while (ARCHIVE_OK == archive_read_data_block(a, &buff, &bytes_read,
     &offset)) {
  const char *start = buff;



  if (offset > last_offset) {
   ++holes_seen;
  }

  while (expected_offset + (int64_t)sparse->size < offset) {




   assert(sparse->type == HOLE);
   expected_offset += sparse->size;
   ++sparse;
  }

  if (expected_offset < offset
      && expected_offset + (int64_t)sparse->size <= offset + (int64_t)bytes_read) {
   const char *end = (const char *)buff + (expected_offset - offset) + (size_t)sparse->size;




   if (assert(sparse->type == HOLE)) {
    assertMemoryFilledWith(start, end - start, '\0');
   }
   start = end;
   expected_offset += sparse->size;
   ++sparse;
  }

  while (expected_offset + (int64_t)sparse->size <= offset + (int64_t)bytes_read) {
   const char *end = (const char *)buff + (expected_offset - offset) + (size_t)sparse->size;
   if (sparse->type == HOLE) {





    if (end > (const char *)buff + bytes_read) {
     end = (const char *)buff + bytes_read;
    }
    assertMemoryFilledWith(start, end - start, '\0');
    start = end;
    expected_offset += sparse->size;
    ++sparse;
   } else if (sparse->type == DATA) {




    if (assert(expected_offset + sparse->size <= offset + bytes_read)) {
     assert(start == (const char *)buff + (size_t)(expected_offset - offset));
     assertMemoryFilledWith(start, end - start, ' ');
    }
    start = end;
    expected_offset += sparse->size;
    ++sparse;
   } else {
    break;
   }
  }

  if (expected_offset < offset + (int64_t)bytes_read) {
   const char *end = (const char *)buff + bytes_read;




   if (assert(sparse->type == HOLE)) {
    assertMemoryFilledWith(start, end - start, '\0');
   }
  }
  last_offset = offset + bytes_read;
 }

 if (last_offset < archive_entry_size(ae)) {
  ++holes_seen;
 }


 while (sparse->type == HOLE) {
  expected_offset += sparse->size;
  ++sparse;
 }
 assert(sparse->type == END);
 assertEqualInt(expected_offset, archive_entry_size(ae));

 failure(path);
 assertEqualInt(holes_seen, expected_holes);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 archive_entry_free(ae);
}
