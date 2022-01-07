
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_read_open_filename (struct archive*,char const*,size_t) ;

int
archive_read_open_file(struct archive *a, const char *filename,
    size_t block_size)
{
 return (archive_read_open_filename(a, filename, block_size));
}
