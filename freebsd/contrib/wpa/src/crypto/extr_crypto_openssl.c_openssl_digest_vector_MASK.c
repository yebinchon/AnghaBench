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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const EVP_MD *type, size_t num_elem,
				 const u8 *addr[], const size_t *len, u8 *mac)
{
	EVP_MD_CTX *ctx;
	size_t i;
	unsigned int mac_len;

	if (FUNC7())
		return -1;

	ctx = FUNC6();
	if (!ctx)
		return -1;
	if (!FUNC3(ctx, type, NULL)) {
		FUNC8(MSG_ERROR, "OpenSSL: EVP_DigestInit_ex failed: %s",
			   FUNC0(FUNC1(), NULL));
		FUNC5(ctx);
		return -1;
	}
	for (i = 0; i < num_elem; i++) {
		if (!FUNC4(ctx, addr[i], len[i])) {
			FUNC8(MSG_ERROR, "OpenSSL: EVP_DigestUpdate "
				   "failed: %s",
				   FUNC0(FUNC1(), NULL));
			FUNC5(ctx);
			return -1;
		}
	}
	if (!FUNC2(ctx, mac, &mac_len)) {
		FUNC8(MSG_ERROR, "OpenSSL: EVP_DigestFinal failed: %s",
			   FUNC0(FUNC1(), NULL));
		FUNC5(ctx);
		return -1;
	}
	FUNC5(ctx);

	return 0;
}