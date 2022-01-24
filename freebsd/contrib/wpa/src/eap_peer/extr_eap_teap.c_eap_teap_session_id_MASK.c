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
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_teap_data {int id_len; int /*<<< orphan*/ * session_id; TYPE_1__ ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_TEAP ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t const) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct eap_teap_data *data)
{
	const size_t max_id_len = 100;
	int res;

	FUNC0(data->session_id);
	data->session_id = FUNC1(max_id_len);
	if (!data->session_id)
		return -1;

	data->session_id[0] = EAP_TYPE_TEAP;
	res = FUNC2(data->ssl.conn, *(data->session_id + 1),
				 max_id_len - 1);
	if (res < 0) {
		FUNC0(data->session_id);
		data->session_id = NULL;
		FUNC4(MSG_ERROR, "EAP-TEAP: Failed to derive Session-Id");
		return -1;
	}

	data->id_len = 1 + res;
	FUNC3(MSG_DEBUG, "EAP-TEAP: Derived Session-Id",
		    data->session_id, data->id_len);
	return 0;
}