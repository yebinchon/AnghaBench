
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct archive_entry archive_entry ;
typedef struct archive archive ;
typedef enum enc { ____Placeholder_enc } enc ;


 int ARCHIVE_EOF ;
 scalar_t__ ARCHIVE_FILTER_NONE ;
 scalar_t__ ARCHIVE_FORMAT_XAR ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int ARCHIVE_WARN ;


 int archive_entry_is_encrypted (struct archive_entry*) ;
 scalar_t__ archive_file_count (struct archive*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 scalar_t__ archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 scalar_t__ archive_read_next_header (struct archive*,struct archive_entry**) ;
 scalar_t__ archive_read_open_memory (struct archive*,unsigned char*,size_t) ;
 scalar_t__ archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_filter_bzip2 (struct archive*) ;
 scalar_t__ archive_read_support_format_all (struct archive*) ;
 int archive_read_support_format_xar (struct archive*) ;
 int assert (int ) ;
 int assertA (int) ;
 int assertEqualInt (int,scalar_t__) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 int skipping (char*) ;

__attribute__((used)) static void verify(unsigned char *d, size_t s,
    void (*f1)(struct archive *, struct archive_entry *),
    void (*f2)(struct archive *, struct archive_entry *),
    enum enc etype)
{
 struct archive_entry *ae;
 struct archive *a;
 unsigned char *buff;
 int r;

 assert((a = archive_read_new()) != ((void*)0));
 switch (etype) {
 case 129:


  if (ARCHIVE_OK != archive_read_support_filter_bzip2(a)) {
   skipping("Unsupported bzip2");
   assertEqualInt(ARCHIVE_OK, archive_read_free(a));
   return;
  }
  break;
 case 128:


  break;
 }
 assertA(0 == archive_read_support_filter_all(a));
 r = archive_read_support_format_xar(a);
 if (r == ARCHIVE_WARN) {
  skipping("xar reading not fully supported on this platform");
  assertEqualInt(ARCHIVE_OK, archive_read_free(a));
  return;
 }
 assert((buff = malloc(100000)) != ((void*)0));
 if (buff == ((void*)0))
  return;
 memcpy(buff, d, s);
 memset(buff + s, 0, 2048);

 assertA(0 == archive_read_support_format_all(a));
 assertA(0 == archive_read_open_memory(a, buff, s + 1024));
 assertA(0 == archive_read_next_header(a, &ae));
 assertEqualInt(archive_filter_code(a, 0), ARCHIVE_FILTER_NONE);
 assertEqualInt(archive_format(a), ARCHIVE_FORMAT_XAR);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 f1(a, ae);
 if (f2) {
  assertA(0 == archive_read_next_header(a, &ae));
  assertEqualInt(archive_filter_code(a, 0), ARCHIVE_FILTER_NONE);
  assertEqualInt(archive_format(a), ARCHIVE_FORMAT_XAR);

  f2(a, ae);
  assertEqualInt(2, archive_file_count(a));
 } else {
  assertEqualInt(1, archive_file_count(a));
 }

 assertEqualInt(ARCHIVE_EOF, archive_read_next_header(a, &ae));

 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
 free(buff);
}
