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
struct eap_sm {int dummy; } ;
struct eap_fast_data {scalar_t__ state; int /*<<< orphan*/  simck; } ;

/* Variables and functions */
 size_t EAP_FAST_KEY_LEN ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 

__attribute__((used)) static u8 * FUNC3(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_fast_data *data = priv;
	u8 *eapKeyData;

	if (data->state != SUCCESS)
		return NULL;

	eapKeyData = FUNC2(EAP_FAST_KEY_LEN);
	if (eapKeyData == NULL)
		return NULL;

	if (FUNC0(data->simck, eapKeyData) < 0) {
		FUNC1(eapKeyData);
		return NULL;
	}
	*len = EAP_FAST_KEY_LEN;

	return eapKeyData;
}