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
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ ge25519_p2 ;
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  z; int /*<<< orphan*/  t; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ ge25519_p1p1 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(ge25519_p1p1 *r, const ge25519_p2 *p)
{
  fe25519 a,b,c,d;
  FUNC2(&a, &p->x);
  FUNC2(&b, &p->y);
  FUNC2(&c, &p->z);
  FUNC0(&c, &c, &c);
  FUNC1(&d, &a);

  FUNC0(&r->x, &p->x, &p->y);
  FUNC2(&r->x, &r->x);
  FUNC3(&r->x, &r->x, &a);
  FUNC3(&r->x, &r->x, &b);
  FUNC0(&r->z, &d, &b);
  FUNC3(&r->t, &r->z, &c);
  FUNC3(&r->y, &d, &b);
}