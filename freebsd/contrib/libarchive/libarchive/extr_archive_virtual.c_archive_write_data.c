
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {TYPE_1__* vtable; } ;
typedef int la_ssize_t ;
struct TYPE_2__ {int (* archive_write_data ) (struct archive*,void const*,size_t) ;} ;


 int stub1 (struct archive*,void const*,size_t) ;

la_ssize_t
archive_write_data(struct archive *a, const void *buff, size_t s)
{
 return ((a->vtable->archive_write_data)(a, buff, s));
}
