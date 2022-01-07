
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; int z; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int fe25519 ;


 int fe25519_getparity (int *) ;
 int fe25519_invert (int *,int *) ;
 int fe25519_mul (int *,int *,int *) ;
 int fe25519_pack (unsigned char*,int *) ;

void ge25519_pack(unsigned char r[32], const ge25519_p3 *p)
{
  fe25519 tx, ty, zi;
  fe25519_invert(&zi, &p->z);
  fe25519_mul(&tx, &p->x, &zi);
  fe25519_mul(&ty, &p->y, &zi);
  fe25519_pack(r, &ty);
  r[31] ^= fe25519_getparity(&tx) << 7;
}
