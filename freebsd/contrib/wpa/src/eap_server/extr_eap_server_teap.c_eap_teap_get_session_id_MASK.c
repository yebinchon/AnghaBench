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
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_teap_data {scalar_t__ state; TYPE_1__ ssl; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_TEAP ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t const) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u8 * FUNC5(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_teap_data *data = priv;
	const size_t max_id_len = 100;
	int res;
	u8 *id;

	if (data->state != SUCCESS)
		return NULL;

	id = FUNC1(max_id_len);
	if (!id)
		return NULL;

	id[0] = EAP_TYPE_TEAP;
	res = FUNC2(data->ssl.conn, id + 1, max_id_len - 1);
	if (res < 0) {
		FUNC0(id);
		FUNC4(MSG_ERROR, "EAP-TEAP: Failed to derive Session-Id");
		return NULL;
	}

	*len = 1 + res;
	FUNC3(MSG_DEBUG, "EAP-TEAP: Derived Session-Id", id, *len);
	return id;
}