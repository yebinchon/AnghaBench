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
struct TYPE_3__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; int /*<<< orphan*/  T; int /*<<< orphan*/  Z; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  d ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*) ; 
 unsigned char const FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqrtm1 ; 

int
FUNC11(ge25519_p3 *h, const unsigned char *s)
{
    fe25519 u;
    fe25519 v;
    fe25519 v3;
    fe25519 vxx;
    fe25519 m_root_check, p_root_check;
    fe25519 negx;
    fe25519 x_sqrtm1;
    int     has_m_root, has_p_root;

    FUNC3(h->Y, s);
    FUNC0(h->Z);
    FUNC9(u, h->Y);
    FUNC6(v, u, d);
    FUNC10(u, u, h->Z); /* u = y^2-1 */
    FUNC1(v, v, h->Z); /* v = dy^2+1 */

    FUNC9(v3, v);
    FUNC6(v3, v3, v); /* v3 = v^3 */
    FUNC9(h->X, v3);
    FUNC6(h->X, h->X, v);
    FUNC6(h->X, h->X, u); /* x = uv^7 */

    FUNC8(h->X, h->X); /* x = (uv^7)^((q-5)/8) */
    FUNC6(h->X, h->X, v3);
    FUNC6(h->X, h->X, u); /* x = uv^3(uv^7)^((q-5)/8) */

    FUNC9(vxx, h->X);
    FUNC6(vxx, vxx, v);
    FUNC10(m_root_check, vxx, u); /* vx^2-u */
    FUNC1(p_root_check, vxx, u); /* vx^2+u */
    has_m_root = FUNC5(m_root_check);
    has_p_root = FUNC5(p_root_check);
    FUNC6(x_sqrtm1, h->X, sqrtm1); /* x*sqrt(-1) */
    FUNC2(h->X, x_sqrtm1, 1 - has_m_root);

    FUNC7(negx, h->X);
    FUNC2(h->X, negx, FUNC4(h->X) ^ (s[31] >> 7));
    FUNC6(h->T, h->X, h->Y);

    return (has_m_root | has_p_root) - 1;
}