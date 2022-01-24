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
struct eap_fast_data {int /*<<< orphan*/  emsk; int /*<<< orphan*/  success; } ;

/* Variables and functions */
 size_t EAP_EMSK_LEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static u8 * FUNC1(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_fast_data *data = priv;
	u8 *key;

	if (!data->success)
		return NULL;

	key = FUNC0(data->emsk, EAP_EMSK_LEN);
	if (key == NULL)
		return NULL;

	*len = EAP_EMSK_LEN;

	return key;
}