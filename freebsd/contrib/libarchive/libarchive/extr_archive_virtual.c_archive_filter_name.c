
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {TYPE_1__* vtable; } ;
struct TYPE_2__ {char const* (* archive_filter_name ) (struct archive*,int) ;} ;


 char const* stub1 (struct archive*,int) ;

const char *
archive_filter_name(struct archive *a, int n)
{
 return ((a->vtable->archive_filter_name)(a, n));
}
