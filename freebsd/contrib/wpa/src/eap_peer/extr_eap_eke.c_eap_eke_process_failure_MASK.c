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
struct eap_method_ret {int dummy; } ;
struct eap_eke_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_EKE_FAIL_NO_ERROR ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 struct wpabuf* FUNC1 (struct eap_eke_data*,struct eap_method_ret*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC4(struct eap_eke_data *data,
					       struct eap_method_ret *ret,
					       const struct wpabuf *reqData,
					       const u8 *payload,
					       size_t payload_len)
{
	FUNC3(MSG_DEBUG, "EAP-EKE: Received EAP-EKE-Failure/Request");

	if (payload_len < 4) {
		FUNC3(MSG_DEBUG, "EAP-EKE: Too short EAP-EKE-Failure");
	} else {
		u32 code;
		code = FUNC0(payload);
		FUNC3(MSG_INFO, "EAP-EKE: Failure-Code 0x%x", code);
	}

	return FUNC1(data, ret, FUNC2(reqData),
				  EAP_EKE_FAIL_NO_ERROR);
}