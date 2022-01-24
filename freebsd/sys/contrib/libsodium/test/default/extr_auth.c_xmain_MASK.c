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
typedef  int /*<<< orphan*/  crypto_auth_hmacsha512_state ;
typedef  int /*<<< orphan*/  crypto_auth_hmacsha256_state ;

/* Variables and functions */
 scalar_t__* a ; 
 scalar_t__* a2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * c ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC9 () ; 
 unsigned int FUNC10 () ; 
 unsigned int FUNC11 () ; 
 unsigned int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC15 () ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  key2 ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,char*) ; 

int
FUNC23(void)
{
    crypto_auth_hmacsha512_state st;
    crypto_auth_hmacsha256_state st256;
    size_t                       i;

    FUNC0(FUNC16() ==
           sizeof(crypto_auth_hmacsha512_state));
    FUNC1(a, c, sizeof c - 1U, key);
    for (i = 0; i < sizeof a; ++i) {
        FUNC21(",0x%02x", (unsigned int) a[i]);
        if (i % 8 == 7)
            FUNC21("\n");
    }
    FUNC21("\n");

    FUNC14(&st, key, sizeof key);
    FUNC17(&st, c, 1U);
    FUNC17(&st, c, sizeof c - 2U);
    FUNC13(&st, a2);
    for (i = 0; i < sizeof a2; ++i) {
        FUNC21(",0x%02x", (unsigned int) a2[i]);
        if (i % 8 == 7)
            FUNC21("\n");
    }
    FUNC21("\n");

    FUNC14(&st, key2, sizeof key2);
    FUNC17(&st, c, 1U);
    FUNC17(&st, c, sizeof c - 2U);
    FUNC13(&st, a2);
    for (i = 0; i < sizeof a2; ++i) {
        FUNC21(",0x%02x", (unsigned int) a2[i]);
        if (i % 8 == 7)
            FUNC21("\n");
    }

    FUNC20(a2, 0, sizeof a2);
    FUNC5(&st256, key2, sizeof key2);
    FUNC8(&st256, NULL, 0U);
    FUNC8(&st256, c, 1U);
    FUNC8(&st256, c, sizeof c - 2U);
    FUNC4(&st256, a2);
    for (i = 0; i < sizeof a2; ++i) {
        FUNC21(",0x%02x", (unsigned int) a2[i]);
        if (i % 8 == 7)
            FUNC21("\n");
    }

    FUNC0(FUNC2() > 0U);
    FUNC0(FUNC18() > 0U);
    FUNC0(FUNC22(FUNC19(), "hmacsha512256") == 0);
    FUNC0(FUNC3() > 0U);
    FUNC0(FUNC6() > 0U);
    FUNC0(FUNC12() > 0U);
    FUNC0(FUNC15() > 0U);
    FUNC0(FUNC9() == FUNC2());
    FUNC0(FUNC10() == FUNC18());
    FUNC0(FUNC11() >=
           FUNC10());
    FUNC0(FUNC7() ==
           sizeof(crypto_auth_hmacsha256_state));
    FUNC0(FUNC16() ==
           sizeof(crypto_auth_hmacsha512_state));

    return 0;
}