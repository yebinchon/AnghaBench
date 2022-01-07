
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct contents {scalar_t__ s; int o; char* d; } ;
struct archive_entry {int dummy; } ;
struct archive_contents {int * filename; struct contents* contents; } ;
struct archive {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data_block (struct archive*,void const**,scalar_t__*,int*) ;
 char archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 scalar_t__ archive_read_open_filename (struct archive*,char const*,int) ;
 scalar_t__ archive_read_support_filter_all (struct archive*) ;
 scalar_t__ archive_read_support_format_tar (struct archive*) ;
 int assert (int) ;
 int assertEqualInt (int,char) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualString (int *,int ) ;
 int extract_reference_file (char const*) ;
 int failure (char*,char const*,...) ;

__attribute__((used)) static void
verify_archive_file(const char *name, struct archive_contents *ac)
{
 struct archive_entry *ae;
 int err;

 struct contents expect;

 struct contents actual;
 const void *p;
 struct archive *a;

 extract_reference_file(name);

 assert((a = archive_read_new()) != ((void*)0));
 assert(0 == archive_read_support_filter_all(a));
 assert(0 == archive_read_support_format_tar(a));
 failure("Can't open %s", name);
 assert(0 == archive_read_open_filename(a, name, 3));

 while (ac->filename != ((void*)0)) {
  struct contents *cts = ac->contents;

  if (!assertEqualIntA(a, 0, archive_read_next_header(a, &ae))) {
   assertEqualInt(ARCHIVE_OK, archive_read_free(a));
   return;
  }
  failure("Name mismatch in archive %s", name);
  assertEqualString(ac->filename, archive_entry_pathname(ae));
  assertEqualInt(archive_entry_is_encrypted(ae), 0);
  assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

  expect = *cts++;
  while (0 == (err = archive_read_data_block(a,
     &p, &actual.s, &actual.o))) {
   actual.d = p;
   while (actual.s > 0) {
    char c = *actual.d;
    if(actual.o < expect.o) {




     failure("%s: pad at offset %d "
         "should be zero", name, actual.o);
     assertEqualInt(c, 0);
    } else if (actual.o == expect.o) {



     assertEqualInt(c, *expect.d);
     expect.d++;
     expect.o++;
     expect.s--;

     if (expect.s <= 0)
      expect = *cts++;
    } else {



     failure("%s: Unexpected trailing data",
         name);
     assert(actual.o <= expect.o);
     archive_read_free(a);
     return;
    }
    actual.d++;
    actual.o++;
    actual.s--;
   }
  }
  failure("%s: should be end of entry", name);
  assertEqualIntA(a, err, ARCHIVE_EOF);
  failure("%s: Size returned at EOF must be zero", name);
  assertEqualInt((int)actual.s, 0);
  failure("%s: Offset of final empty chunk must be same as file size", name);
  assertEqualInt(actual.o, expect.o);

  ++ac;
 }

 err = archive_read_next_header(a, &ae);
 assertEqualIntA(a, ARCHIVE_EOF, err);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
