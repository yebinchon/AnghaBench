
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warc_s {scalar_t__ typ; size_t populz; } ;
struct archive_write {struct warc_s* format_data; } ;
typedef int ssize_t ;


 scalar_t__ AE_IFREG ;
 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,void const*,size_t) ;

__attribute__((used)) static ssize_t
_warc_data(struct archive_write *a, const void *buf, size_t len)
{
 struct warc_s *w = a->format_data;

 if (w->typ == AE_IFREG) {
  int rc;


  if (len > w->populz) {
   len = (size_t)w->populz;
  }


  rc = __archive_write_output(a, buf, len);
  if (rc != ARCHIVE_OK) {
   return rc;
  }
 }
 return len;
}
