
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int archive_read_support_format_zip_seekable (struct archive*) ;
 int archive_read_support_format_zip_streamable (struct archive*) ;

int
archive_read_support_format_zip(struct archive *a)
{
 int r;
 r = archive_read_support_format_zip_streamable(a);
 if (r != ARCHIVE_OK)
  return r;
 return (archive_read_support_format_zip_seekable(a));
}
