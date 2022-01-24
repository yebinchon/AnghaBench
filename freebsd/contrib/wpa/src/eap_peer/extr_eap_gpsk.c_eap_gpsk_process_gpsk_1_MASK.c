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
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int /*<<< orphan*/  methodState; int /*<<< orphan*/  ignore; } ;
struct eap_gpsk_data {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 scalar_t__ GPSK_1 ; 
 int /*<<< orphan*/  GPSK_3 ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (struct eap_sm*,struct eap_gpsk_data*,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_gpsk_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct eap_gpsk_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 struct wpabuf* FUNC3 (struct eap_gpsk_data*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_gpsk_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct eap_sm *sm,
					       struct eap_gpsk_data *data,
					       struct eap_method_ret *ret,
					       u8 identifier,
					       const u8 *payload,
					       size_t payload_len)
{
	size_t csuite_list_len;
	const u8 *csuite_list, *pos, *end;
	struct wpabuf *resp;

	if (data->state != GPSK_1) {
		ret->ignore = TRUE;
		return NULL;
	}

	FUNC5(MSG_DEBUG, "EAP-GPSK: Received Request/GPSK-1");

	end = payload + payload_len;

	pos = FUNC1(data, payload, end);
	pos = FUNC2(data, pos, end);
	pos = FUNC0(sm, data, &csuite_list,
					   &csuite_list_len, pos, end);
	if (pos == NULL) {
		ret->methodState = METHOD_DONE;
		FUNC4(data, FAILURE);
		return NULL;
	}

	resp = FUNC3(data, identifier,
				    csuite_list, csuite_list_len);
	if (resp == NULL)
		return NULL;

	FUNC4(data, GPSK_3);

	return resp;
}