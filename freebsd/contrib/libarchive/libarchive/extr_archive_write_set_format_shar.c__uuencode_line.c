
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; char* s; } ;
struct shar {TYPE_1__ work; } ;
struct archive_write {int archive; } ;
typedef int ptrdiff_t ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int UUENC (size_t) ;
 int archive_set_error (int *,int ,char*) ;
 int * archive_string_ensure (TYPE_1__*,size_t) ;
 int uuencode_group (char const*,char*) ;

__attribute__((used)) static int
_uuencode_line(struct archive_write *a, struct shar *shar, const char *inbuf, size_t len)
{
 char *buf;
 size_t alloc_len;


 alloc_len = shar->work.length + 62;
 if (archive_string_ensure(&shar->work, alloc_len) == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM, "Out of memory");
  return (ARCHIVE_FATAL);
 }

 buf = shar->work.s + shar->work.length;
 *buf++ = UUENC(len);
 while (len >= 3) {
  uuencode_group(inbuf, buf);
  len -= 3;
  inbuf += 3;
  buf += 4;
 }
 if (len != 0) {
  char tmp_buf[3];
  tmp_buf[0] = inbuf[0];
  if (len == 1)
   tmp_buf[1] = '\0';
  else
   tmp_buf[1] = inbuf[1];
  tmp_buf[2] = '\0';
  uuencode_group(tmp_buf, buf);
  buf += 4;
 }
 *buf++ = '\n';
 if ((buf - shar->work.s) > (ptrdiff_t)(shar->work.length + 62)) {
  archive_set_error(&a->archive,
      ARCHIVE_ERRNO_MISC, "Buffer overflow");
  return (ARCHIVE_FATAL);
 }
 shar->work.length = buf - shar->work.s;
 return (ARCHIVE_OK);
}
