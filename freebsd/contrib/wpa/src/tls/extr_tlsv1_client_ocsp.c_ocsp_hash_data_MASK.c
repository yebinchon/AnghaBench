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
struct asn1_oid {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (struct asn1_oid*,char*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC7 (struct asn1_oid*) ; 
 scalar_t__ FUNC8 (struct asn1_oid*) ; 
 scalar_t__ FUNC9 (struct asn1_oid*) ; 
 scalar_t__ FUNC10 (struct asn1_oid*) ; 

__attribute__((used)) static unsigned int FUNC11(struct asn1_oid *alg, const u8 *data,
				   size_t data_len, u8 *hash)
{
	const u8 *addr[1] = { data };
	size_t len[1] = { data_len };
	char buf[100];

	if (FUNC7(alg)) {
		if (FUNC1(1, addr, len, hash) < 0)
			return 0;
		FUNC5(MSG_MSGDUMP, "OCSP: Hash (SHA1)", hash, 20);
		return 20;
	}

	if (FUNC8(alg)) {
		if (FUNC2(1, addr, len, hash) < 0)
			return 0;
		FUNC5(MSG_MSGDUMP, "OCSP: Hash (SHA256)", hash, 32);
		return 32;
	}

	if (FUNC9(alg)) {
		if (FUNC3(1, addr, len, hash) < 0)
			return 0;
		FUNC5(MSG_MSGDUMP, "OCSP: Hash (SHA384)", hash, 48);
		return 48;
	}

	if (FUNC10(alg)) {
		if (FUNC4(1, addr, len, hash) < 0)
			return 0;
		FUNC5(MSG_MSGDUMP, "OCSP: Hash (SHA512)", hash, 64);
		return 64;
	}


	FUNC0(alg, buf, sizeof(buf));
	FUNC6(MSG_DEBUG, "OCSP: Could not calculate hash with alg %s",
		   buf);
	return 0;
}