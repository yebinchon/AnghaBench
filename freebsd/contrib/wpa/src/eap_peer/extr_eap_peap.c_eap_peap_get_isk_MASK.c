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
struct eap_peap_data {int /*<<< orphan*/ * phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {int /*<<< orphan*/ * (* getKey ) (struct eap_sm*,int /*<<< orphan*/ *,size_t*) ;int /*<<< orphan*/  (* isKeyAvailable ) (struct eap_sm*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct eap_sm*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct eap_sm *sm, struct eap_peap_data *data,
			    u8 *isk, size_t isk_len)
{
	u8 *key;
	size_t key_len;

	FUNC2(isk, 0, isk_len);
	if (data->phase2_method == NULL || data->phase2_priv == NULL ||
	    data->phase2_method->isKeyAvailable == NULL ||
	    data->phase2_method->getKey == NULL)
		return 0;

	if (!data->phase2_method->isKeyAvailable(sm, data->phase2_priv) ||
	    (key = data->phase2_method->getKey(sm, data->phase2_priv,
					       &key_len)) == NULL) {
		FUNC5(MSG_DEBUG, "EAP-PEAP: Could not get key material "
			   "from Phase 2");
		return -1;
	}

	if (key_len > isk_len)
		key_len = isk_len;
	FUNC1(isk, key, key_len);
	FUNC0(key);

	return 0;
}