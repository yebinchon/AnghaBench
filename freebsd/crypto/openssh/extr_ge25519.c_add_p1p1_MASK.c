#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  z; int /*<<< orphan*/  t; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ ge25519_p3 ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  z; int /*<<< orphan*/  t; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ ge25519_p1p1 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ge25519_ec2d ; 

__attribute__((used)) static void FUNC3(ge25519_p1p1 *r, const ge25519_p3 *p, const ge25519_p3 *q)
{
  fe25519 a, b, c, d, t;
  
  FUNC2(&a, &p->y, &p->x); /* A = (Y1-X1)*(Y2-X2) */
  FUNC2(&t, &q->y, &q->x);
  FUNC1(&a, &a, &t);
  FUNC0(&b, &p->x, &p->y); /* B = (Y1+X1)*(Y2+X2) */
  FUNC0(&t, &q->x, &q->y);
  FUNC1(&b, &b, &t);
  FUNC1(&c, &p->t, &q->t); /* C = T1*k*T2 */
  FUNC1(&c, &c, &ge25519_ec2d);
  FUNC1(&d, &p->z, &q->z); /* D = Z1*2*Z2 */
  FUNC0(&d, &d, &d);
  FUNC2(&r->x, &b, &a); /* E = B-A */
  FUNC2(&r->t, &d, &c); /* F = D-C */
  FUNC0(&r->z, &d, &c); /* G = D+C */
  FUNC0(&r->y, &b, &a); /* H = B+A */
}