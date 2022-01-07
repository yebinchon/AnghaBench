
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int* r; int* s; scalar_t__* h; } ;
typedef TYPE_1__ poly1305_internal ;


 int U8TOU64 (unsigned char const*) ;

int poly1305_init(void *ctx, const unsigned char key[16])
{
    poly1305_internal *st = (poly1305_internal *)ctx;
    u64 r0, r1;


    st->h[0] = 0;
    st->h[1] = 0;
    st->h[2] = 0;

    r0 = U8TOU64(&key[0]) & 0x0ffffffc0fffffff;
    r1 = U8TOU64(&key[8]) & 0x0ffffffc0ffffffc;


    st->r[0] = r0 & 0x0fffffffffff;
    st->r[1] = ((r0 >> 44) | (r1 << 20)) & 0x0fffffffffff;
    st->r[2] = (r1 >> 24);

    st->s[0] = (st->r[1] + (st->r[1] << 2)) << 2;
    st->s[1] = (st->r[2] + (st->r[2] << 2)) << 2;

    return 0;
}
