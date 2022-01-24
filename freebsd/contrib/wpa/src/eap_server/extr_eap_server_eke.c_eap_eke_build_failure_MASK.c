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
struct eap_eke_data {int /*<<< orphan*/  failure_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_EKE_FAILURE ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (struct eap_eke_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC4(struct eap_eke_data *data, u8 id)
{
	struct wpabuf *msg;

	FUNC2(MSG_DEBUG, "EAP-EKE: Request/Failure: Failure-Code=0x%x",
		   data->failure_code);

	msg = FUNC0(data, id, 4, EAP_EKE_FAILURE);
	if (msg == NULL) {
		FUNC1(data, FAILURE);
		return NULL;
	}
	FUNC3(msg, data->failure_code);

	return msg;
}