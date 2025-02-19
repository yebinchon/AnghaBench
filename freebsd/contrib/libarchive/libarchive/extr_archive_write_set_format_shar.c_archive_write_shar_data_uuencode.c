
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int s; } ;
struct shar {int outpos; char const* outbuff; TYPE_1__ work; int has_data; } ;
struct archive_write {scalar_t__ format_data; } ;
typedef size_t ssize_t ;


 size_t ARCHIVE_FATAL ;
 size_t ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,int ,int) ;
 int archive_string_empty (TYPE_1__*) ;
 int memcpy (char const*,char const*,size_t) ;
 int uuencode_line (struct archive_write*,struct shar*,char const*,int) ;

__attribute__((used)) static ssize_t
archive_write_shar_data_uuencode(struct archive_write *a, const void *buff,
    size_t length)
{
 struct shar *shar;
 const char *src;
 size_t n;
 int ret;

 shar = (struct shar *)a->format_data;
 if (!shar->has_data)
  return (ARCHIVE_OK);
 src = (const char *)buff;

 if (shar->outpos != 0) {
  n = 45 - shar->outpos;
  if (n > length)
   n = length;
  memcpy(shar->outbuff + shar->outpos, src, n);
  if (shar->outpos + n < 45) {
   shar->outpos += n;
   return length;
  }
  uuencode_line(a, shar, shar->outbuff, 45);
  src += n;
  n = length - n;
 } else {
  n = length;
 }

 while (n >= 45) {
  uuencode_line(a, shar, src, 45);
  src += 45;
  n -= 45;

  if (shar->work.length < 65536)
   continue;
  ret = __archive_write_output(a, shar->work.s,
      shar->work.length);
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
  archive_string_empty(&shar->work);
 }
 if (n != 0) {
  memcpy(shar->outbuff, src, n);
  shar->outpos = n;
 }
 return (length);
}
