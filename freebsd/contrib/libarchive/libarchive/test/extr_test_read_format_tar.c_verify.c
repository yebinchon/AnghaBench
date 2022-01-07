
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct archive_entry archive_entry ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 scalar_t__ archive_read_next_header (struct archive*,struct archive_entry**) ;
 scalar_t__ archive_read_open_memory (struct archive*,unsigned char*,size_t) ;
 scalar_t__ archive_read_support_filter_all (struct archive*) ;
 scalar_t__ archive_read_support_format_all (struct archive*) ;
 int assert (int ) ;
 int assertA (int) ;
 int assertEqualInt (int ,int) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void verify(unsigned char *d, size_t s,
    void (*f)(struct archive_entry *),
    int compression, int format)
{
 struct archive_entry *ae;
 struct archive *a;
 unsigned char *buff = malloc(100000);

 memcpy(buff, d, s);
 memset(buff + s, 0, 2048);

 assert((a = archive_read_new()) != ((void*)0));
 assertA(0 == archive_read_support_filter_all(a));
 assertA(0 == archive_read_support_format_all(a));
 assertA(0 == archive_read_open_memory(a, buff, s + 1024));
 assertA(0 == archive_read_next_header(a, &ae));
 assertEqualInt(archive_filter_code(a, 0), compression);
 assertEqualInt(archive_format(a), format);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);


 f(ae);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
 free(buff);
}
