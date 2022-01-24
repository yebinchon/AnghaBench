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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC6(const u8 *key, size_t key_len, size_t num_elem,
		     const u8 *addr[], const size_t *len, u8 *mac)
{
	void *ctx;
	u8 cbc[AES_BLOCK_SIZE], pad[AES_BLOCK_SIZE];
	const u8 *pos, *end;
	size_t i, e, left, total_len;

	if (FUNC0())
		return -1;

	ctx = FUNC3(key, key_len);
	if (ctx == NULL)
		return -1;
	FUNC5(cbc, 0, AES_BLOCK_SIZE);

	total_len = 0;
	for (e = 0; e < num_elem; e++)
		total_len += len[e];
	left = total_len;

	e = 0;
	pos = addr[0];
	end = pos + len[0];

	while (left >= AES_BLOCK_SIZE) {
		for (i = 0; i < AES_BLOCK_SIZE; i++) {
			cbc[i] ^= *pos++;
			if (pos >= end) {
				/*
				 * Stop if there are no more bytes to process
				 * since there are no more entries in the array.
				 */
				if (i + 1 == AES_BLOCK_SIZE &&
				    left == AES_BLOCK_SIZE)
					break;
				e++;
				pos = addr[e];
				end = pos + len[e];
			}
		}
		if (left > AES_BLOCK_SIZE)
			FUNC1(ctx, cbc, cbc);
		left -= AES_BLOCK_SIZE;
	}

	FUNC5(pad, 0, AES_BLOCK_SIZE);
	FUNC1(ctx, pad, pad);
	FUNC4(pad);

	if (left || total_len == 0) {
		for (i = 0; i < left; i++) {
			cbc[i] ^= *pos++;
			if (pos >= end) {
				/*
				 * Stop if there are no more bytes to process
				 * since there are no more entries in the array.
				 */
				if (i + 1 == left)
					break;
				e++;
				pos = addr[e];
				end = pos + len[e];
			}
		}
		cbc[left] ^= 0x80;
		FUNC4(pad);
	}

	for (i = 0; i < AES_BLOCK_SIZE; i++)
		pad[i] ^= cbc[i];
	FUNC1(ctx, pad, mac);
	FUNC2(ctx);
	return 0;
}