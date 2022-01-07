
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warc_s {scalar_t__ typ; } ;
struct archive_write {struct warc_s* format_data; } ;
typedef int _eor ;


 scalar_t__ AE_IFREG ;
 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,char const*,int) ;

__attribute__((used)) static int
_warc_finish_entry(struct archive_write *a)
{
 static const char _eor[] = "\r\n\r\n";
 struct warc_s *w = a->format_data;

 if (w->typ == AE_IFREG) {
  int rc = __archive_write_output(a, _eor, sizeof(_eor) - 1U);

  if (rc != ARCHIVE_OK) {
   return rc;
  }
 }

 w->typ = 0;
 return (ARCHIVE_OK);
}
