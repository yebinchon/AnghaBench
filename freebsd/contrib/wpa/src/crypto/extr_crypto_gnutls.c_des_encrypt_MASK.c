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
typedef  int /*<<< orphan*/  gcry_cipher_hd_t ;

/* Variables and functions */
 int /*<<< orphan*/  GCRY_CIPHER_DES ; 
 int /*<<< orphan*/  GCRY_CIPHER_MODE_ECB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(const u8 *clear, const u8 *key, u8 *cypher)
{
	gcry_cipher_hd_t hd;
	u8 pkey[8], next, tmp;
	int i;

	/* Add parity bits to the key */
	next = 0;
	for (i = 0; i < 7; i++) {
		tmp = key[i];
		pkey[i] = (tmp >> i) | next | 1;
		next = tmp << (7 - i);
	}
	pkey[i] = next | 1;

	FUNC2(&hd, GCRY_CIPHER_DES, GCRY_CIPHER_MODE_ECB, 0);
	FUNC4(FUNC3(hd, pkey, 8));
	FUNC1(hd, cypher, 8, clear, 8);
	FUNC0(hd);
	return 0;
}