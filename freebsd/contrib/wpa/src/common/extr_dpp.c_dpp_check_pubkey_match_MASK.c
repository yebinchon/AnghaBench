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
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  const* FUNC6 (struct wpabuf*) ; 
 int FUNC7 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC8(EVP_PKEY *pub, struct wpabuf *r_hash)
{
	struct wpabuf *uncomp;
	int res;
	u8 hash[SHA256_MAC_LEN];
	const u8 *addr[1];
	size_t len[1];

	if (FUNC7(r_hash) != SHA256_MAC_LEN)
		return -1;
	uncomp = FUNC0(pub, 1);
	if (!uncomp)
		return -1;
	addr[0] = FUNC6(uncomp);
	len[0] = FUNC7(uncomp);
	FUNC3(MSG_DEBUG, "DPP: Uncompressed public key",
		    addr[0], len[0]);
	res = FUNC2(1, addr, len, hash);
	FUNC5(uncomp);
	if (res < 0)
		return -1;
	if (FUNC1(hash, FUNC6(r_hash), SHA256_MAC_LEN) != 0) {
		FUNC4(MSG_DEBUG,
			   "DPP: Received hash value does not match calculated public key hash value");
		FUNC3(MSG_DEBUG, "DPP: Calculated hash",
			    hash, SHA256_MAC_LEN);
		return -1;
	}
	return 0;
}