
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int __archive_write_filters_free (struct archive*) ;
 int archive_write_add_filter_compress (struct archive*) ;

int
archive_write_set_compression_compress(struct archive *a)
{
 __archive_write_filters_free(a);
 return (archive_write_add_filter_compress(a));
}
