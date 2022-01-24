#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  t; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ ge25519_p3 ;
struct TYPE_6__ {int /*<<< orphan*/  x; int /*<<< orphan*/  y; } ;
typedef  TYPE_2__ ge25519_aff ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ge25519_ec2d ; 

__attribute__((used)) static void FUNC3(ge25519_p3 *r, const ge25519_aff *q)
{
  fe25519 a,b,t1,t2,c,d,e,f,g,h,qt;
  FUNC1(&qt, &q->x, &q->y);
  FUNC2(&a, &r->y, &r->x); /* A = (Y1-X1)*(Y2-X2) */
  FUNC0(&b, &r->y, &r->x); /* B = (Y1+X1)*(Y2+X2) */
  FUNC2(&t1, &q->y, &q->x);
  FUNC0(&t2, &q->y, &q->x);
  FUNC1(&a, &a, &t1);
  FUNC1(&b, &b, &t2);
  FUNC2(&e, &b, &a); /* E = B-A */
  FUNC0(&h, &b, &a); /* H = B+A */
  FUNC1(&c, &r->t, &qt); /* C = T1*k*T2 */
  FUNC1(&c, &c, &ge25519_ec2d);
  FUNC0(&d, &r->z, &r->z); /* D = Z1*2 */
  FUNC2(&f, &d, &c); /* F = D-C */
  FUNC0(&g, &d, &c); /* G = D+C */
  FUNC1(&r->x, &e, &f);
  FUNC1(&r->y, &h, &g);
  FUNC1(&r->z, &g, &f);
  FUNC1(&r->t, &e, &h);
}