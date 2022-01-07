
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ krb5_storage ;
struct TYPE_5__ {unsigned char* base; size_t size; unsigned char* ptr; int len; } ;
typedef TYPE_2__ emem_storage ;


 int ENOMEM ;
 int free (unsigned char*) ;
 int memset (char*,int ,int) ;
 void* realloc (unsigned char*,int) ;

__attribute__((used)) static int
emem_trunc(krb5_storage *sp, off_t offset)
{
    emem_storage *s = (emem_storage*)sp->data;




    if (offset == 0) {
 free(s->base);
 s->size = 0;
 s->base = ((void*)0);
 s->ptr = ((void*)0);
    } else if ((size_t)offset > s->size || (s->size / 2) > (size_t)offset) {
 void *base;
 size_t off;
 off = s->ptr - s->base;
 base = realloc(s->base, offset);
 if(base == ((void*)0))
     return ENOMEM;
 if ((size_t)offset > s->size)
     memset((char *)base + s->size, 0, offset - s->size);
 s->size = offset;
 s->base = base;
 s->ptr = (unsigned char *)base + off;
    }
    s->len = offset;
    if ((s->ptr - s->base) > offset)
 s->ptr = s->base + offset;
    return 0;
}
