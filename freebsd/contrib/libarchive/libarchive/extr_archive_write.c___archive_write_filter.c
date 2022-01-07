
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {int (* write ) (struct archive_write_filter*,void const*,size_t) ;size_t bytes_written; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int stub1 (struct archive_write_filter*,void const*,size_t) ;

int
__archive_write_filter(struct archive_write_filter *f,
    const void *buff, size_t length)
{
 int r;
 if (length == 0)
  return(ARCHIVE_OK);
 if (f->write == ((void*)0))


  return(ARCHIVE_FATAL);
 r = (f->write)(f, buff, length);
 f->bytes_written += length;
 return (r);
}
