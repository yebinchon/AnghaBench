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
typedef  int /*<<< orphan*/  u32 ;
struct wpabuf {int dummy; } ;
struct eap_method_ret {int /*<<< orphan*/  allowNotifications; int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; } ;
struct eap_eke_data {int /*<<< orphan*/  sess; int /*<<< orphan*/  dh_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  EAP_EKE_FAILURE ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (struct eap_eke_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct eap_eke_data *data,
					  struct eap_method_ret *ret,
					  u8 id, u32 failure_code)
{
	struct wpabuf *resp;

	FUNC4(MSG_DEBUG, "EAP-EKE: Sending EAP-EKE-Failure/Response - code=0x%x",
		   failure_code);

	resp = FUNC0(data, id, 4, EAP_EKE_FAILURE);
	if (resp)
		FUNC5(resp, failure_code);

	FUNC3(data->dh_priv, 0, sizeof(data->dh_priv));
	FUNC1(&data->sess);

	FUNC2(data, FAILURE);
	ret->methodState = METHOD_DONE;
	ret->decision = DECISION_FAIL;
	ret->allowNotifications = FALSE;

	return resp;
}