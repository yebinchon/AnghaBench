
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_read_support_filter_bzip2 (struct archive*) ;

int
archive_read_support_compression_bzip2(struct archive *a)
{
 return archive_read_support_filter_bzip2(a);
}
