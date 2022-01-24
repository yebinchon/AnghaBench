#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ *) ; 

void FUNC4(unsigned char r[32], const ge25519_p3 *p)
{
  fe25519 tx, ty, zi;
  FUNC1(&zi, &p->z); 
  FUNC2(&tx, &p->x, &zi);
  FUNC2(&ty, &p->y, &zi);
  FUNC3(r, &ty);
  r[31] ^= FUNC0(&tx) << 7;
}