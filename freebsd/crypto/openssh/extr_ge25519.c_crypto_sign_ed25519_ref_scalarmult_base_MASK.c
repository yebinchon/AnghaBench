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
typedef  int /*<<< orphan*/  sc25519 ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  t; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  ge25519_aff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long long,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  const*) ; 

void FUNC5(ge25519_p3 *r, const sc25519 *s)
{
  signed char b[85];
  int i;
  ge25519_aff t;
  FUNC4(b,s);

  FUNC0((ge25519_aff *)r, 0, b[0]);
  FUNC2(&r->z);
  FUNC1(&r->t, &r->x, &r->y);
  for(i=1;i<85;i++)
  {
    FUNC0(&t, (unsigned long long) i, b[i]);
    FUNC3(r, &t);
  }
}