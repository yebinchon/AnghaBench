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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__ const*,int) ; 

int FUNC4(const u8 *key, size_t key_len, const u8 *nonce,
		    u8 *data, size_t data_len)
{
	void *ctx;
	size_t j, len, left = data_len;
	int i;
	u8 *pos = data;
	u8 counter[AES_BLOCK_SIZE], buf[AES_BLOCK_SIZE];

	ctx = FUNC2(key, key_len);
	if (ctx == NULL)
		return -1;
	FUNC3(counter, nonce, AES_BLOCK_SIZE);

	while (left > 0) {
		FUNC0(ctx, counter, buf);

		len = (left < AES_BLOCK_SIZE) ? left : AES_BLOCK_SIZE;
		for (j = 0; j < len; j++)
			pos[j] ^= buf[j];
		pos += len;
		left -= len;

		for (i = AES_BLOCK_SIZE - 1; i >= 0; i--) {
			counter[i]++;
			if (counter[i])
				break;
		}
	}
	FUNC1(ctx);
	return 0;
}