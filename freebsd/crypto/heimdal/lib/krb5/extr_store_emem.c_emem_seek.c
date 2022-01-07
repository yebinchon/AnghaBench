
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_6__ {int (* seek ) (TYPE_1__*,int,int const) ;scalar_t__ data; } ;
typedef TYPE_1__ krb5_storage ;
struct TYPE_7__ {size_t size; int ptr; int base; size_t len; } ;
typedef TYPE_2__ emem_storage ;


 int EINVAL ;



 int errno ;
 int stub1 (TYPE_1__*,int,int const) ;
 int stub2 (TYPE_1__*,int,int const) ;

__attribute__((used)) static off_t
emem_seek(krb5_storage *sp, off_t offset, int whence)
{
    emem_storage *s = (emem_storage*)sp->data;
    switch(whence){
    case 128:
 if((size_t)offset > s->size)
     offset = s->size;
 if(offset < 0)
     offset = 0;
 s->ptr = s->base + offset;
 if((size_t)offset > s->len)
     s->len = offset;
 break;
    case 130:
 sp->seek(sp,s->ptr - s->base + offset, 128);
 break;
    case 129:
 sp->seek(sp, s->len + offset, 128);
 break;
    default:
 errno = EINVAL;
 return -1;
    }
    return s->ptr - s->base;
}
