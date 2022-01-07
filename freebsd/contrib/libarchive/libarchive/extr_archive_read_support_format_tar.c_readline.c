
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* s; } ;
struct tar {TYPE_1__ line; } ;
struct archive_read {int archive; } ;
typedef int ssize_t ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ENOMEM ;
 void* __archive_read_ahead (struct archive_read*,int,int*) ;
 int archive_set_error (int *,int ,char*) ;
 int * archive_string_ensure (TYPE_1__*,int) ;
 void* memchr (void const*,char,int) ;
 int memcpy (char*,void const*,int) ;
 int tar_flush_unconsumed (struct archive_read*,size_t*) ;

__attribute__((used)) static ssize_t
readline(struct archive_read *a, struct tar *tar, const char **start,
    ssize_t limit, size_t *unconsumed)
{
 ssize_t bytes_read;
 ssize_t total_size = 0;
 const void *t;
 const char *s;
 void *p;

 tar_flush_unconsumed(a, unconsumed);

 t = __archive_read_ahead(a, 1, &bytes_read);
 if (bytes_read <= 0)
  return (ARCHIVE_FATAL);
 s = t;
 p = memchr(t, '\n', bytes_read);

 if (p != ((void*)0)) {
  bytes_read = 1 + ((const char *)p) - s;
  if (bytes_read > limit) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Line too long");
   return (ARCHIVE_FATAL);
  }
  *unconsumed = bytes_read;
  *start = s;
  return (bytes_read);
 }
 *unconsumed = bytes_read;

 for (;;) {
  if (total_size + bytes_read > limit) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Line too long");
   return (ARCHIVE_FATAL);
  }
  if (archive_string_ensure(&tar->line, total_size + bytes_read) == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate working buffer");
   return (ARCHIVE_FATAL);
  }
  memcpy(tar->line.s + total_size, t, bytes_read);
  tar_flush_unconsumed(a, unconsumed);
  total_size += bytes_read;

  if (p != ((void*)0)) {
   *start = tar->line.s;
   return (total_size);
  }

  t = __archive_read_ahead(a, 1, &bytes_read);
  if (bytes_read <= 0)
   return (ARCHIVE_FATAL);
  s = t;
  p = memchr(t, '\n', bytes_read);

  if (p != ((void*)0)) {
   bytes_read = 1 + ((const char *)p) - s;
  }
  *unconsumed = bytes_read;
 }
}
