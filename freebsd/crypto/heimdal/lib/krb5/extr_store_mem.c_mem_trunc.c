
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t off_t ;
struct TYPE_4__ {size_t size; size_t ptr; size_t base; } ;
typedef TYPE_1__ mem_storage ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_2__ krb5_storage ;


 int ERANGE ;

__attribute__((used)) static int
mem_trunc(krb5_storage *sp, off_t offset)
{
    mem_storage *s = (mem_storage*)sp->data;
    if((size_t)offset > s->size)
 return ERANGE;
    s->size = offset;
    if ((s->ptr - s->base) > offset)
 s->ptr = s->base + offset;
    return 0;
}
