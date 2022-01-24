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
typedef  int /*<<< orphan*/  HMAC_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t const) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int FUNC6(const EVP_MD *type, const u8 *key,
			       size_t key_len, size_t num_elem,
			       const u8 *addr[], const size_t *len, u8 *mac,
			       unsigned int mdlen)
{
	HMAC_CTX *ctx;
	size_t i;
	int res;

	if (FUNC5())
		return -1;

	ctx = FUNC1();
	if (!ctx)
		return -1;
	res = FUNC3(ctx, key, key_len, type, NULL);
	if (res != 1)
		goto done;

	for (i = 0; i < num_elem; i++)
		FUNC4(ctx, addr[i], len[i]);

	res = FUNC2(ctx, mac, &mdlen);
done:
	FUNC0(ctx);

	return res == 1 ? 0 : -1;
}