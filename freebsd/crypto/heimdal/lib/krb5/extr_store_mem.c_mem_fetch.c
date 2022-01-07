
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_5__ {size_t base; size_t size; size_t ptr; } ;
typedef TYPE_1__ mem_storage ;
struct TYPE_6__ {int (* seek ) (TYPE_2__*,size_t,int ) ;scalar_t__ data; } ;
typedef TYPE_2__ krb5_storage ;


 int SEEK_CUR ;
 int memmove (void*,size_t,size_t) ;
 int stub1 (TYPE_2__*,size_t,int ) ;

__attribute__((used)) static ssize_t
mem_fetch(krb5_storage *sp, void *data, size_t size)
{
    mem_storage *s = (mem_storage*)sp->data;
    if(size > (size_t)(s->base + s->size - s->ptr))
 size = s->base + s->size - s->ptr;
    memmove(data, s->ptr, size);
    sp->seek(sp, size, SEEK_CUR);
    return size;
}
