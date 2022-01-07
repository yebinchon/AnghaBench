
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 char const* archive_filter_name (struct archive*,int ) ;

const char *
archive_compression_name(struct archive *a)
{
 return archive_filter_name(a, 0);
}
