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
struct eap_teap_data {int /*<<< orphan*/  key_data; int /*<<< orphan*/  success; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 size_t EAP_TEAP_KEY_LEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static u8 * FUNC1(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_teap_data *data = priv;
	u8 *key;

	if (!data->success)
		return NULL;

	key = FUNC0(data->key_data, EAP_TEAP_KEY_LEN);
	if (!key)
		return NULL;

	*len = EAP_TEAP_KEY_LEN;

	return key;
}