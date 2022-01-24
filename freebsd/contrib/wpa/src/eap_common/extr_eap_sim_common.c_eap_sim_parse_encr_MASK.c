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
struct eap_sim_attrs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct eap_sim_attrs*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

u8 * FUNC6(const u8 *k_encr, const u8 *encr_data,
			size_t encr_data_len, const u8 *iv,
			struct eap_sim_attrs *attr, int aka)
{
	u8 *decrypted;

	if (!iv) {
		FUNC5(MSG_INFO, "EAP-SIM: Encrypted data, but no IV");
		return NULL;
	}

	decrypted = FUNC3(encr_data, encr_data_len);
	if (decrypted == NULL)
		return NULL;

#ifdef TEST_FUZZ
		wpa_printf(MSG_INFO,
			   "TEST: Skip AES-128-CBC decryption for fuzz testing");
#else /* TEST_FUZZ */
	if (FUNC0(k_encr, iv, decrypted, encr_data_len)) {
		FUNC2(decrypted);
		return NULL;
	}
#endif /* TEST_FUZZ */
	FUNC4(MSG_MSGDUMP, "EAP-SIM: Decrypted AT_ENCR_DATA",
		    decrypted, encr_data_len);

	if (FUNC1(decrypted, decrypted + encr_data_len, attr,
			       aka, 1)) {
		FUNC5(MSG_INFO, "EAP-SIM: (encr) Failed to parse "
			   "decrypted AT_ENCR_DATA");
		FUNC2(decrypted);
		return NULL;
	}

	return decrypted;
}