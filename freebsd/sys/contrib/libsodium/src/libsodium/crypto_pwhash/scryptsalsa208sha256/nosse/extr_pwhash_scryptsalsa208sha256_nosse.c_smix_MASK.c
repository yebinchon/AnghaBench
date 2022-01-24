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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  escrypt_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC6(uint8_t *B, size_t r, uint64_t N, uint32_t *V, uint32_t *XY)
{
    uint32_t *X = XY;
    uint32_t *Y = &XY[32 * r];
    uint32_t *Z = &XY[64 * r];
    uint64_t  i;
    uint64_t  j;
    size_t    k;

    /* 1: X <-- B */
    for (k = 0; k < 32 * r; k++) {
        X[k] = FUNC0(&B[4 * k]);
    }
    /* 2: for i = 0 to N - 1 do */
    for (i = 0; i < N; i += 2) {
        /* 3: V_i <-- X */
        FUNC2((escrypt_block_t *) &V[i * (32 * r)], (escrypt_block_t *) X,
               128 * r);

        /* 4: X <-- H(X) */
        FUNC4(X, Y, Z, r);

        /* 3: V_i <-- X */
        FUNC2((escrypt_block_t *) &V[(i + 1) * (32 * r)],
               (escrypt_block_t *) Y, 128 * r);

        /* 4: X <-- H(X) */
        FUNC4(Y, X, Z, r);
    }

    /* 6: for i = 0 to N - 1 do */
    for (i = 0; i < N; i += 2) {
        /* 7: j <-- Integerify(X) mod N */
        j = FUNC5(X, r) & (N - 1);

        /* 8: X <-- H(X \xor V_j) */
        FUNC3((escrypt_block_t *) X, (escrypt_block_t *) &V[j * (32 * r)],
               128 * r);
        FUNC4(X, Y, Z, r);

        /* 7: j <-- Integerify(X) mod N */
        j = FUNC5(Y, r) & (N - 1);

        /* 8: X <-- H(X \xor V_j) */
        FUNC3((escrypt_block_t *) Y, (escrypt_block_t *) &V[j * (32 * r)],
               128 * r);
        FUNC4(Y, X, Z, r);
    }
    /* 10: B' <-- X */
    for (k = 0; k < 32 * r; k++) {
        FUNC1(&B[4 * k], X[k]);
    }
}