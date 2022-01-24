#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct eap_sm {int dummy; } ;
struct eap_fast_data {TYPE_1__* phase2_method; int /*<<< orphan*/ * phase2_priv; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ method; int /*<<< orphan*/ * (* getKey ) (struct eap_sm*,int /*<<< orphan*/ *,size_t*) ;} ;

/* Variables and functions */
 scalar_t__ EAP_TYPE_MSCHAPV2 ; 
 scalar_t__ EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (struct eap_sm*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct eap_sm *sm,
				   struct eap_fast_data *data,
				   u8 *isk, size_t isk_len)
{
	u8 *key;
	size_t key_len;

	FUNC2(isk, 0, isk_len);

	if (data->phase2_method == NULL || data->phase2_priv == NULL) {
		FUNC4(MSG_DEBUG, "EAP-FAST: Phase 2 method not "
			   "available");
		return -1;
	}

	if (data->phase2_method->getKey == NULL)
		return 0;

	if ((key = data->phase2_method->getKey(sm, data->phase2_priv,
					       &key_len)) == NULL) {
		FUNC4(MSG_DEBUG, "EAP-FAST: Could not get key material "
			   "from Phase 2");
		return -1;
	}

	if (key_len > isk_len)
		key_len = isk_len;
	if (key_len == 32 &&
	    data->phase2_method->vendor == EAP_VENDOR_IETF &&
	    data->phase2_method->method == EAP_TYPE_MSCHAPV2) {
		/*
		 * EAP-FAST uses reverse order for MS-MPPE keys when deriving
		 * MSK from EAP-MSCHAPv2. Swap the keys here to get the correct
		 * ISK for EAP-FAST cryptobinding.
		 */
		FUNC1(isk, key + 16, 16);
		FUNC1(isk + 16, key, 16);
	} else
		FUNC1(isk, key, key_len);
	FUNC0(key);

	return 0;
}