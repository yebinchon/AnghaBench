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
struct eap_aka_data {scalar_t__ eap_method; int /*<<< orphan*/ * id_msgs; } ;

/* Variables and functions */
 size_t EAP_AKA_CHECKCODE_LEN ; 
 size_t EAP_AKA_PRIME_CHECKCODE_LEN ; 
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct eap_aka_data *data,
				    const u8 *checkcode, size_t checkcode_len)
{
	const u8 *addr;
	size_t len;
	u8 hash[SHA256_MAC_LEN];
	size_t hash_len;

	if (checkcode == NULL)
		return -1;

	if (data->id_msgs == NULL) {
		if (checkcode_len != 0) {
			FUNC3(MSG_DEBUG, "EAP-AKA: Checkcode from peer "
				   "indicates that AKA/Identity messages were "
				   "used, but they were not");
			return -1;
		}
		return 0;
	}

	hash_len = data->eap_method == EAP_TYPE_AKA_PRIME ?
		EAP_AKA_PRIME_CHECKCODE_LEN : EAP_AKA_CHECKCODE_LEN;

	if (checkcode_len != hash_len) {
		FUNC3(MSG_DEBUG, "EAP-AKA: Checkcode from peer indicates "
			   "that AKA/Identity message were not used, but they "
			   "were");
		return -1;
	}

	/* Checkcode is SHA1 hash over all EAP-AKA/Identity packets. */
	addr = FUNC4(data->id_msgs);
	len = FUNC5(data->id_msgs);
	if (data->eap_method == EAP_TYPE_AKA_PRIME)
		FUNC2(1, &addr, &len, hash);
	else
		FUNC1(1, &addr, &len, hash);

	if (FUNC0(hash, checkcode, hash_len) != 0) {
		FUNC3(MSG_DEBUG, "EAP-AKA: Mismatch in AT_CHECKCODE");
		return -1;
	}

	return 0;
}