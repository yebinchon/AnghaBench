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
typedef  int /*<<< orphan*/  u8 ;
struct hmac_sha1_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
 int /*<<< orphan*/  SHA1_DIGEST_SIZE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct hmac_sha1_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hmac_sha1_ctx*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct hmac_sha1_ctx*,size_t const,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct hmac_sha1_ctx*,int /*<<< orphan*/ ,int) ; 

int FUNC5(const u8 *key, size_t key_len, size_t num_elem,
		     const u8 *addr[], const size_t *len, u8 *mac)
{
	struct hmac_sha1_ctx ctx;
	size_t i;

	if (FUNC0())
		return -1;

	FUNC2(&ctx, key_len, key);
	for (i = 0; i < num_elem; i++)
		FUNC3(&ctx, len[i], addr[i]);
	FUNC1(&ctx, SHA1_DIGEST_SIZE, mac);
	FUNC4(&ctx, 0, sizeof(ctx));
	return 0;
}