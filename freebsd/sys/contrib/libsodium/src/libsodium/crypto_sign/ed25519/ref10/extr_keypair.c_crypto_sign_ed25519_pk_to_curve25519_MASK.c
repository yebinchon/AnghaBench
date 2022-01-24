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
struct TYPE_4__ {int /*<<< orphan*/  Y; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,unsigned char const*) ; 
 scalar_t__ FUNC7 (unsigned char const*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

int
FUNC9(unsigned char *curve25519_pk,
                                     const unsigned char *ed25519_pk)
{
    ge25519_p3 A;
    fe25519    x;
    fe25519    one_minus_y;

    if (FUNC7(ed25519_pk) != 0 ||
        FUNC6(&A, ed25519_pk) != 0 ||
        FUNC8(&A) == 0) {
        return -1;
    }
    FUNC0(one_minus_y);
    FUNC4(one_minus_y, one_minus_y, A.Y);
    FUNC0(x);
    FUNC1(x, x, A.Y);
    FUNC2(one_minus_y, one_minus_y);
    FUNC3(x, x, one_minus_y);
    FUNC5(curve25519_pk, x);

    return 0;
}