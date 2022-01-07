
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u128 ;
struct TYPE_2__ {int* r; int* h; } ;
typedef TYPE_1__ poly1305_internal ;


 int CONSTANT_TIME_CARRY (int,int) ;
 size_t POLY1305_BLOCK_SIZE ;
 int U8TOU64 (unsigned char const*) ;

__attribute__((used)) static void
poly1305_blocks(void *ctx, const unsigned char *inp, size_t len, u32 padbit)
{
    poly1305_internal *st = (poly1305_internal *)ctx;
    u64 r0, r1;
    u64 s1;
    u64 h0, h1, h2, c;
    u128 d0, d1;

    r0 = st->r[0];
    r1 = st->r[1];

    s1 = r1 + (r1 >> 2);

    h0 = st->h[0];
    h1 = st->h[1];
    h2 = st->h[2];

    while (len >= POLY1305_BLOCK_SIZE) {

        h0 = (u64)(d0 = (u128)h0 + U8TOU64(inp + 0));
        h1 = (u64)(d1 = (u128)h1 + (d0 >> 64) + U8TOU64(inp + 8));




        h2 += (u64)(d1 >> 64) + padbit;


        d0 = ((u128)h0 * r0) +
             ((u128)h1 * s1);
        d1 = ((u128)h0 * r1) +
             ((u128)h1 * r0) +
             (h2 * s1);
        h2 = (h2 * r0);



        h0 = (u64)d0;
        h1 = (u64)(d1 += d0 >> 64);
        h2 += (u64)(d1 >> 64);

        c = (h2 >> 2) + (h2 & ~3UL);
        h2 &= 3;
        h0 += c;
        h1 += (c = CONSTANT_TIME_CARRY(h0,c));
        h2 += CONSTANT_TIME_CARRY(h1,c);
        inp += POLY1305_BLOCK_SIZE;
        len -= POLY1305_BLOCK_SIZE;
    }

    st->h[0] = h0;
    st->h[1] = h1;
    st->h[2] = h2;
}
