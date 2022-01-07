
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_filter_code (struct archive*,int ) ;

int
archive_compression(struct archive *a)
{
 return archive_filter_code(a, 0);
}
