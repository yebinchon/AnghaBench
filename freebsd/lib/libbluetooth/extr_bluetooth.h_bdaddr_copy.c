
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * b; } ;
typedef TYPE_1__ bdaddr_t ;



__attribute__((used)) static __inline void
bdaddr_copy(bdaddr_t *d, const bdaddr_t *s)
{
 d->b[0] = s->b[0];
 d->b[1] = s->b[1];
 d->b[2] = s->b[2];
 d->b[3] = s->b[3];
 d->b[4] = s->b[4];
 d->b[5] = s->b[5];
}
