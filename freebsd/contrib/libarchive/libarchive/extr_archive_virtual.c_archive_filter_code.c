
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {TYPE_1__* vtable; } ;
struct TYPE_2__ {int (* archive_filter_code ) (struct archive*,int) ;} ;


 int stub1 (struct archive*,int) ;

int
archive_filter_code(struct archive *a, int n)
{
 return ((a->vtable->archive_filter_code)(a, n));
}
