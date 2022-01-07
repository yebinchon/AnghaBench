
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_5__ {int (* seek ) (TYPE_1__*,size_t,int ) ;scalar_t__ data; } ;
typedef TYPE_1__ krb5_storage ;
struct TYPE_6__ {size_t base; size_t len; size_t ptr; } ;
typedef TYPE_2__ emem_storage ;


 int SEEK_CUR ;
 int memmove (void*,size_t,size_t) ;
 int stub1 (TYPE_1__*,size_t,int ) ;

__attribute__((used)) static ssize_t
emem_fetch(krb5_storage *sp, void *data, size_t size)
{
    emem_storage *s = (emem_storage*)sp->data;
    if((size_t)(s->base + s->len - s->ptr) < size)
 size = s->base + s->len - s->ptr;
    memmove(data, s->ptr, size);
    sp->seek(sp, size, SEEK_CUR);
    return size;
}
