
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {TYPE_1__* vtable; } ;
typedef int la_int64_t ;
struct TYPE_2__ {int (* archive_filter_bytes ) (struct archive*,int) ;} ;


 int stub1 (struct archive*,int) ;

la_int64_t
archive_filter_bytes(struct archive *a, int n)
{
 return ((a->vtable->archive_filter_bytes)(a, n));
}
