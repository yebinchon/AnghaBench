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
struct eap_psk_data {scalar_t__ state; int /*<<< orphan*/  rand_s; int /*<<< orphan*/  rand_p; } ;

/* Variables and functions */
 int EAP_PSK_RAND_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_PSK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ PSK_DONE ; 
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static u8 * FUNC3(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_psk_data *data = priv;
	u8 *id;

	if (data->state != PSK_DONE)
		return NULL;

	*len = 1 + 2 * EAP_PSK_RAND_LEN;
	id = FUNC0(*len);
	if (id == NULL)
		return NULL;

	id[0] = EAP_TYPE_PSK;
	FUNC1(id + 1, data->rand_p, EAP_PSK_RAND_LEN);
	FUNC1(id + 1 + EAP_PSK_RAND_LEN, data->rand_s, EAP_PSK_RAND_LEN);
	FUNC2(MSG_DEBUG, "EAP-PSK: Derived Session-Id", id, *len);

	return id;
}