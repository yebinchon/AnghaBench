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
struct eap_eke_data {int state; } ;

/* Variables and functions */
#define  COMMIT 131 
#define  CONFIRM 130 
#define  FAILURE_REPORT 129 
#define  IDENTITY 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (struct eap_sm*,struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (struct eap_sm*,struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (struct eap_sm*,struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC5(struct eap_sm *sm, void *priv, u8 id)
{
	struct eap_eke_data *data = priv;

	switch (data->state) {
	case IDENTITY:
		return FUNC3(sm, data, id);
	case COMMIT:
		return FUNC0(sm, data, id);
	case CONFIRM:
		return FUNC1(sm, data, id);
	case FAILURE_REPORT:
		return FUNC2(data, id);
	default:
		FUNC4(MSG_DEBUG, "EAP-EKE: Unknown state %d in buildReq",
			   data->state);
		break;
	}
	return NULL;
}