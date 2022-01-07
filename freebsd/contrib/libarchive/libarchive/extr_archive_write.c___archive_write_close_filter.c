
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {int (* close ) (struct archive_write_filter*) ;struct archive_write_filter* next_filter; } ;


 int ARCHIVE_OK ;
 int stub1 (struct archive_write_filter*) ;

int
__archive_write_close_filter(struct archive_write_filter *f)
{
 if (f->close != ((void*)0))
  return (f->close)(f);
 if (f->next_filter != ((void*)0))
  return (__archive_write_close_filter(f->next_filter));
 return (ARCHIVE_OK);
}
