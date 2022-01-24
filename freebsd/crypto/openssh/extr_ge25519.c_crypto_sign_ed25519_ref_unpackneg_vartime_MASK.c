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
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  t; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  ge25519_ecd ; 
 int /*<<< orphan*/  ge25519_sqrtm1 ; 

int FUNC10(ge25519_p3 *r, const unsigned char p[32])
{
  unsigned char par;
  fe25519 t, chk, num, den, den2, den4, den6;
  FUNC6(&r->z);
  par = p[31] >> 7;
  FUNC9(&r->y, p); 
  FUNC7(&num, &r->y); /* x = y^2 */
  FUNC3(&den, &num, &ge25519_ecd); /* den = dy^2 */
  FUNC8(&num, &num, &r->z); /* x = y^2-1 */
  FUNC0(&den, &r->z, &den); /* den = dy^2+1 */

  /* Computation of sqrt(num/den) */
  /* 1.: computation of num^((p-5)/8)*den^((7p-35)/8) = (num*den^7)^((p-5)/8) */
  FUNC7(&den2, &den);
  FUNC7(&den4, &den2);
  FUNC3(&den6, &den4, &den2);
  FUNC3(&t, &den6, &num);
  FUNC3(&t, &t, &den);

  FUNC5(&t, &t);
  /* 2. computation of r->x = t * num * den^3 */
  FUNC3(&t, &t, &num);
  FUNC3(&t, &t, &den);
  FUNC3(&t, &t, &den);
  FUNC3(&r->x, &t, &den);

  /* 3. Check whether sqrt computation gave correct result, multiply by sqrt(-1) if not: */
  FUNC7(&chk, &r->x);
  FUNC3(&chk, &chk, &den);
  if (!FUNC2(&chk, &num))
    FUNC3(&r->x, &r->x, &ge25519_sqrtm1);

  /* 4. Now we have one of the two square roots, except if input was not a square */
  FUNC7(&chk, &r->x);
  FUNC3(&chk, &chk, &den);
  if (!FUNC2(&chk, &num))
    return -1;

  /* 5. Choose the desired square root according to parity: */
  if(FUNC1(&r->x) != (1-par))
    FUNC4(&r->x, &r->x);

  FUNC3(&r->t, &r->x, &r->y);
  return 0;
}