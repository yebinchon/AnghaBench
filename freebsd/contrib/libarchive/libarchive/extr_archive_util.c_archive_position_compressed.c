
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int la_int64_t ;


 int archive_filter_bytes (struct archive*,int) ;

la_int64_t
archive_position_compressed(struct archive *a)
{
 return archive_filter_bytes(a, -1);
}
