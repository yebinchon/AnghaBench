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
struct eap_pwd_data {scalar_t__ state; int /*<<< orphan*/  emsk; } ;

/* Variables and functions */
 size_t EAP_EMSK_LEN ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static u8 * FUNC2(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_pwd_data *data = priv;
	u8 *key;

	if (data->state != SUCCESS)
		return NULL;

	if ((key = FUNC0(EAP_EMSK_LEN)) == NULL)
		return NULL;

	FUNC1(key, data->emsk, EAP_EMSK_LEN);
	*len = EAP_EMSK_LEN;

	return key;
}