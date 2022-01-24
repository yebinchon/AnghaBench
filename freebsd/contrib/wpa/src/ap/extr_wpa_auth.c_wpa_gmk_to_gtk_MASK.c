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
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  WPA_GMK_LEN ; 
 int WPA_GTK_MAX_LEN ; 
 int WPA_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(const u8 *gmk, const char *label, const u8 *addr,
			  const u8 *gnonce, u8 *gtk, size_t gtk_len)
{
	u8 data[ETH_ALEN + WPA_NONCE_LEN + 8 + WPA_GTK_MAX_LEN];
	u8 *pos;
	int ret = 0;

	/* GTK = PRF-X(GMK, "Group key expansion",
	 *	AA || GNonce || Time || random data)
	 * The example described in the IEEE 802.11 standard uses only AA and
	 * GNonce as inputs here. Add some more entropy since this derivation
	 * is done only at the Authenticator and as such, does not need to be
	 * exactly same.
	 */
	FUNC2(data, 0, sizeof(data));
	FUNC1(data, addr, ETH_ALEN);
	FUNC1(data + ETH_ALEN, gnonce, WPA_NONCE_LEN);
	pos = data + ETH_ALEN + WPA_NONCE_LEN;
	FUNC7(pos);
#ifdef TEST_FUZZ
	os_memset(pos, 0xef, 8);
#endif /* TEST_FUZZ */
	pos += 8;
	if (FUNC3(pos, gtk_len) < 0)
		ret = -1;

#ifdef CONFIG_SHA384
	if (sha384_prf(gmk, WPA_GMK_LEN, label, data, sizeof(data),
		       gtk, gtk_len) < 0)
		ret = -1;
#else /* CONFIG_SHA384 */
#ifdef CONFIG_SHA256
	if (sha256_prf(gmk, WPA_GMK_LEN, label, data, sizeof(data),
		       gtk, gtk_len) < 0)
		ret = -1;
#else /* CONFIG_SHA256 */
	if (FUNC4(gmk, WPA_GMK_LEN, label, data, sizeof(data),
		     gtk, gtk_len) < 0)
		ret = -1;
#endif /* CONFIG_SHA256 */
#endif /* CONFIG_SHA384 */

	FUNC0(data, sizeof(data));

	return ret;
}