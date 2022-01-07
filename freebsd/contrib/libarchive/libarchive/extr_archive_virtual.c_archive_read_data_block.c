
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {TYPE_1__* vtable; } ;
typedef int la_int64_t ;
struct TYPE_2__ {int (* archive_read_data_block ) (struct archive*,void const**,size_t*,int *) ;} ;


 int stub1 (struct archive*,void const**,size_t*,int *) ;

int
archive_read_data_block(struct archive *a,
    const void **buff, size_t *s, la_int64_t *o)
{
 return ((a->vtable->archive_read_data_block)(a, buff, s, o));
}
