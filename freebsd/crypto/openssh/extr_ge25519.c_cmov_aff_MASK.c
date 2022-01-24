#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ ge25519_aff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char) ; 

__attribute__((used)) static void FUNC1(ge25519_aff *r, const ge25519_aff *p, unsigned char b)
{
  FUNC0(&r->x, &p->x, b);
  FUNC0(&r->y, &p->y, b);
}