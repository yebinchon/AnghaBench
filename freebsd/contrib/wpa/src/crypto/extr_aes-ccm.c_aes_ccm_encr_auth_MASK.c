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
typedef  int u8 ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  MSG_EXCESSIVE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int*,size_t) ; 

__attribute__((used)) static void FUNC3(void *aes, size_t M, u8 *x, u8 *a, u8 *auth)
{
	size_t i;
	u8 tmp[AES_BLOCK_SIZE];

	FUNC2(MSG_EXCESSIVE, "CCM T", x, M);
	/* U = T XOR S_0; S_0 = E(K, A_0) */
	FUNC0(&a[AES_BLOCK_SIZE - 2], 0);
	FUNC1(aes, a, tmp);
	for (i = 0; i < M; i++)
		auth[i] = x[i] ^ tmp[i];
	FUNC2(MSG_EXCESSIVE, "CCM U", auth, M);
}