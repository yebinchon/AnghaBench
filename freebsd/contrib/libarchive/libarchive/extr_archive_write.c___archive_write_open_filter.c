
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {int (* open ) (struct archive_write_filter*) ;} ;


 int ARCHIVE_OK ;
 int stub1 (struct archive_write_filter*) ;

int
__archive_write_open_filter(struct archive_write_filter *f)
{
 if (f->open == ((void*)0))
  return (ARCHIVE_OK);
 return (f->open)(f);
}
