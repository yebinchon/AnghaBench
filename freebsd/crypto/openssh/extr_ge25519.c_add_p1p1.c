
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int z; int t; int y; int x; } ;
typedef TYPE_1__ ge25519_p3 ;
struct TYPE_7__ {int y; int z; int t; int x; } ;
typedef TYPE_2__ ge25519_p1p1 ;
typedef int fe25519 ;


 int fe25519_add (int *,int *,int *) ;
 int fe25519_mul (int *,int *,int *) ;
 int fe25519_sub (int *,int *,int *) ;
 int ge25519_ec2d ;

__attribute__((used)) static void add_p1p1(ge25519_p1p1 *r, const ge25519_p3 *p, const ge25519_p3 *q)
{
  fe25519 a, b, c, d, t;

  fe25519_sub(&a, &p->y, &p->x);
  fe25519_sub(&t, &q->y, &q->x);
  fe25519_mul(&a, &a, &t);
  fe25519_add(&b, &p->x, &p->y);
  fe25519_add(&t, &q->x, &q->y);
  fe25519_mul(&b, &b, &t);
  fe25519_mul(&c, &p->t, &q->t);
  fe25519_mul(&c, &c, &ge25519_ec2d);
  fe25519_mul(&d, &p->z, &q->z);
  fe25519_add(&d, &d, &d);
  fe25519_sub(&r->x, &b, &a);
  fe25519_sub(&r->t, &d, &c);
  fe25519_add(&r->z, &d, &c);
  fe25519_add(&r->y, &b, &a);
}
