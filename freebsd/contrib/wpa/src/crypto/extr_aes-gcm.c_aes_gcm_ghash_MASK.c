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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int /*<<< orphan*/  len_buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_EXCESSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC4(const u8 *H, const u8 *aad, size_t aad_len,
			  const u8 *crypt, size_t crypt_len, u8 *S)
{
	u8 len_buf[16];

	/*
	 * u = 128 * ceil[len(C)/128] - len(C)
	 * v = 128 * ceil[len(A)/128] - len(A)
	 * S = GHASH_H(A || 0^v || C || 0^u || [len(A)]64 || [len(C)]64)
	 * (i.e., zero padded to block size A || C and lengths of each in bits)
	 */
	FUNC2(S);
	FUNC1(H, aad, aad_len, S);
	FUNC1(H, crypt, crypt_len, S);
	FUNC0(len_buf, aad_len * 8);
	FUNC0(len_buf + 8, crypt_len * 8);
	FUNC1(H, len_buf, sizeof(len_buf), S);

	FUNC3(MSG_EXCESSIVE, "S = GHASH_H(...)", S, 16);
}