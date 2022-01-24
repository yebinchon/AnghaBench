#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  const ge25519_p3 ;
typedef  int /*<<< orphan*/  ge25519_p1p1 ;
typedef  int /*<<< orphan*/  ge25519_cached ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(ge25519_p3 *r, const ge25519_p3 *A)
{
    static const signed char aslide[253] = {
        13, 0, 0, 0, 0, -1, 0, 0, 0, 0, -11, 0, 0, 0, 0, 0, 0, -5, 0, 0, 0, 0, 0, 0, -3, 0, 0, 0, 0, -13, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, -13, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, -13, 0, 0, 0, 0, 0, 0, -3, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 3, 0, 0, 0, 0, -11, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
    };
    ge25519_cached Ai[8];
    ge25519_p1p1   t;
    ge25519_p3     u;
    ge25519_p3     A2;
    int            i;

    FUNC4(&Ai[0], A);
    FUNC3(&t, A);
    FUNC1(&A2, &t);
    FUNC0(&t, &A2, &Ai[0]);
    FUNC1(&u, &t);
    FUNC4(&Ai[1], &u);
    FUNC0(&t, &A2, &Ai[1]);
    FUNC1(&u, &t);
    FUNC4(&Ai[2], &u);
    FUNC0(&t, &A2, &Ai[2]);
    FUNC1(&u, &t);
    FUNC4(&Ai[3], &u);
    FUNC0(&t, &A2, &Ai[3]);
    FUNC1(&u, &t);
    FUNC4(&Ai[4], &u);
    FUNC0(&t, &A2, &Ai[4]);
    FUNC1(&u, &t);
    FUNC4(&Ai[5], &u);
    FUNC0(&t, &A2, &Ai[5]);
    FUNC1(&u, &t);
    FUNC4(&Ai[6], &u);
    FUNC0(&t, &A2, &Ai[6]);
    FUNC1(&u, &t);
    FUNC4(&Ai[7], &u);

    FUNC2(r);

    for (i = 252; i >= 0; --i) {
        FUNC3(&t, r);

        if (aslide[i] > 0) {
            FUNC1(&u, &t);
            FUNC0(&t, &u, &Ai[aslide[i] / 2]);
        } else if (aslide[i] < 0) {
            FUNC1(&u, &t);
            FUNC5(&t, &u, &Ai[(-aslide[i]) / 2]);
        }

        FUNC1(r, &t);
    }
}