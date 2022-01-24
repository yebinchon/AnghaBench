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
struct eap_aka_data {scalar_t__ state; int /*<<< orphan*/  msk; } ;

/* Variables and functions */
 size_t EAP_SIM_KEYING_DATA_LEN ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static u8 * FUNC1(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_aka_data *data = priv;
	u8 *key;

	if (data->state != SUCCESS)
		return NULL;

	key = FUNC0(data->msk, EAP_SIM_KEYING_DATA_LEN);
	if (key == NULL)
		return NULL;

	*len = EAP_SIM_KEYING_DATA_LEN;

	return key;
}