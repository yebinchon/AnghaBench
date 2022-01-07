
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t; int z; int y; int x; } ;
typedef TYPE_1__ ge25519_p3 ;
struct TYPE_6__ {int x; int y; } ;
typedef TYPE_2__ ge25519_aff ;
typedef int fe25519 ;


 int fe25519_add (int *,int *,int *) ;
 int fe25519_mul (int *,int *,int *) ;
 int fe25519_sub (int *,int *,int *) ;
 int ge25519_ec2d ;

__attribute__((used)) static void ge25519_mixadd2(ge25519_p3 *r, const ge25519_aff *q)
{
  fe25519 a,b,t1,t2,c,d,e,f,g,h,qt;
  fe25519_mul(&qt, &q->x, &q->y);
  fe25519_sub(&a, &r->y, &r->x);
  fe25519_add(&b, &r->y, &r->x);
  fe25519_sub(&t1, &q->y, &q->x);
  fe25519_add(&t2, &q->y, &q->x);
  fe25519_mul(&a, &a, &t1);
  fe25519_mul(&b, &b, &t2);
  fe25519_sub(&e, &b, &a);
  fe25519_add(&h, &b, &a);
  fe25519_mul(&c, &r->t, &qt);
  fe25519_mul(&c, &c, &ge25519_ec2d);
  fe25519_add(&d, &r->z, &r->z);
  fe25519_sub(&f, &d, &c);
  fe25519_add(&g, &d, &c);
  fe25519_mul(&r->x, &e, &f);
  fe25519_mul(&r->y, &h, &g);
  fe25519_mul(&r->z, &g, &f);
  fe25519_mul(&r->t, &e, &h);
}
