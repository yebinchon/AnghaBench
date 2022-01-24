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
typedef  int /*<<< orphan*/  gcry_md_hd_t ;

/* Variables and functions */
 int /*<<< orphan*/  GCRY_MD_FLAG_HMAC ; 
 scalar_t__ GPG_ERR_NO_ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int algo, const u8 *key, size_t key_len,
			      size_t num_elem, const u8 *addr[],
			      const size_t *len, u8 *mac)
{
	gcry_md_hd_t hd;
	unsigned char *p;
	size_t i;

	if (FUNC0())
		return -1;

	if (FUNC3(&hd, algo, GCRY_MD_FLAG_HMAC) != GPG_ERR_NO_ERROR)
		return -1;
	if (FUNC5(hd, key, key_len) != GPG_ERR_NO_ERROR) {
		FUNC1(hd);
		return -1;
	}
	for (i = 0; i < num_elem; i++)
		FUNC6(hd, addr[i], len[i]);
	p = FUNC4(hd, algo);
	if (p)
		FUNC7(mac, p, FUNC2(algo));
	FUNC1(hd);
	return 0;
}