
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_write_open_filename (struct archive*,char const*) ;

int
archive_write_open_file(struct archive *a, const char *filename)
{
 return (archive_write_open_filename(a, filename));
}
