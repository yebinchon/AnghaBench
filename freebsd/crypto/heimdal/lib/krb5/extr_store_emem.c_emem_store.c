
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_5__ {int (* seek ) (TYPE_1__*,size_t,int ) ;scalar_t__ data; } ;
typedef TYPE_1__ krb5_storage ;
struct TYPE_6__ {unsigned char* base; int size; unsigned char* ptr; } ;
typedef TYPE_2__ emem_storage ;


 int SEEK_CUR ;
 int memmove (unsigned char*,void const*,size_t) ;
 void* realloc (unsigned char*,size_t) ;
 int stub1 (TYPE_1__*,size_t,int ) ;

__attribute__((used)) static ssize_t
emem_store(krb5_storage *sp, const void *data, size_t size)
{
    emem_storage *s = (emem_storage*)sp->data;
    if(size > (size_t)(s->base + s->size - s->ptr)){
 void *base;
 size_t sz, off;
 off = s->ptr - s->base;
 sz = off + size;
 if (sz < 4096)
     sz *= 2;
 base = realloc(s->base, sz);
 if(base == ((void*)0))
     return -1;
 s->size = sz;
 s->base = base;
 s->ptr = (unsigned char*)base + off;
    }
    memmove(s->ptr, data, size);
    sp->seek(sp, size, SEEK_CUR);
    return size;
}
