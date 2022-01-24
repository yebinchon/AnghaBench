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
struct ikev2_keys {int /*<<< orphan*/  SK_integ_len; int /*<<< orphan*/  const* SK_ar; int /*<<< orphan*/  const* SK_ai; } ;
struct ikev2_integ_alg {size_t hash_len; } ;

/* Variables and functions */
 int IKEV2_MAX_HASH_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct ikev2_integ_alg* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf const*) ; 
 scalar_t__ FUNC6 (struct wpabuf const*) ; 

int FUNC7(int integ_alg, struct ikev2_keys *keys,
			   int initiator, const struct wpabuf *msg,
			   const u8 *pos, const u8 *end)
{
	const struct ikev2_integ_alg *integ;
	size_t icv_len;
	u8 icv[IKEV2_MAX_HASH_LEN];
	const u8 *SK_a = initiator ? keys->SK_ai : keys->SK_ar;

	integ = FUNC0(integ_alg);
	if (integ == NULL) {
		FUNC4(MSG_DEBUG, "EAP-IKEV2: Unknown INTEG "
			   "transform / cannot validate ICV");
		return -1;
	}
	icv_len = integ->hash_len;

	if (end - pos < (int) icv_len) {
		FUNC4(MSG_DEBUG, "EAP-IKEV2: Not enough room in the "
			   "message for Integrity Checksum Data");
		return -1;
	}

	if (SK_a == NULL) {
		FUNC4(MSG_DEBUG, "EAP-IKEV2: No SK_a for ICV validation");
		return -1;
	}

	if (FUNC1(integ_alg, SK_a, keys->SK_integ_len,
			     FUNC5(msg),
			     FUNC6(msg) - icv_len, icv) < 0) {
		FUNC4(MSG_INFO, "EAP-IKEV2: Could not calculate ICV");
		return -1;
	}

	if (FUNC2(icv, end - icv_len, icv_len) != 0) {
		FUNC4(MSG_INFO, "EAP-IKEV2: Invalid ICV");
		FUNC3(MSG_DEBUG, "EAP-IKEV2: Calculated ICV",
			    icv, icv_len);
		FUNC3(MSG_DEBUG, "EAP-IKEV2: Received ICV",
			    end - icv_len, icv_len);
		return -1;
	}

	FUNC4(MSG_DEBUG, "EAP-IKEV2: Valid Integrity Checksum Data in "
		   "the received message");

	return icv_len;
}