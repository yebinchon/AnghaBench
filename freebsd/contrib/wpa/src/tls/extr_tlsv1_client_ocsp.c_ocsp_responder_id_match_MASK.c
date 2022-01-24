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
struct x509_name {int dummy; } ;
struct x509_certificate {size_t public_key_len; int /*<<< orphan*/  subject; int /*<<< orphan*/  const* public_key; } ;

/* Variables and functions */
 int SHA1_MAC_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct x509_name*) ; 

__attribute__((used)) static int FUNC3(struct x509_certificate *signer,
				   struct x509_name *name, const u8 *key_hash)
{
	if (key_hash) {
		u8 hash[SHA1_MAC_LEN];
		const u8 *addr[1] = { signer->public_key };
		size_t len[1] = { signer->public_key_len };

		if (FUNC1(1, addr, len, hash) < 0)
			return 0;
		return FUNC0(hash, key_hash, SHA1_MAC_LEN) == 0;
	}

	return FUNC2(&signer->subject, name) == 0;
}