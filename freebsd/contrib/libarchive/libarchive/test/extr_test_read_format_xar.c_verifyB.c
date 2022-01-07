
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 scalar_t__ ARCHIVE_OK ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 scalar_t__ archive_read_data (struct archive*,unsigned char*,size_t) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 scalar_t__ archive_read_next_header (struct archive*,struct archive_entry**) ;
 scalar_t__ archive_read_open_memory (struct archive*,unsigned char*,size_t) ;
 scalar_t__ archive_read_support_filter_bzip2 (struct archive*) ;
 scalar_t__ archive_read_support_filter_gzip (struct archive*) ;
 scalar_t__ archive_read_support_format_xar (struct archive*) ;
 int assert (int ) ;
 int assertA (int) ;
 int assertEqualInt (scalar_t__,int ) ;
 int free (unsigned char*) ;
 scalar_t__ malloc (size_t) ;
 int skipping (char*) ;

__attribute__((used)) static void verifyB(unsigned char *d, size_t s) {
 struct archive* a;
 struct archive_entry *entry = ((void*)0);
 size_t buf_size;
 unsigned char *buf;

 assert((a = archive_read_new()) != ((void*)0));

 if(ARCHIVE_OK != archive_read_support_filter_gzip(a)) {
  skipping("Unsupported gzip");
  assertEqualInt(ARCHIVE_OK, archive_read_free(a));
  return;
 }

 if(ARCHIVE_OK != archive_read_support_filter_bzip2(a)) {
  skipping("Unsupported bzip2");
  assertEqualInt(ARCHIVE_OK, archive_read_free(a));
  return;
 }

 if(ARCHIVE_OK != archive_read_support_format_xar(a)) {
  skipping("Unsupported xar");
  assertEqualInt(ARCHIVE_OK, archive_read_free(a));
  return;
 }

 assertA(0 == archive_read_open_memory(a, d, s));


 assertA(0 == archive_read_next_header(a, &entry));
 buf_size = (size_t) archive_entry_size(entry);
 assertA(buf_size == 12);
 buf = (unsigned char*) malloc(buf_size);
 assertA(((void*)0) != buf);
 assertA(buf_size == (size_t) archive_read_data(a, buf, buf_size));
 free(buf);


 assertA(0 == archive_read_next_header(a, &entry));
 buf_size = (size_t) archive_entry_size(entry);
 assertA(buf_size == 12);
 buf = (unsigned char*) malloc(buf_size);
 assertA(((void*)0) != buf);
 assertA(buf_size == (size_t) archive_read_data(a, buf, buf_size));
 free(buf);

 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
