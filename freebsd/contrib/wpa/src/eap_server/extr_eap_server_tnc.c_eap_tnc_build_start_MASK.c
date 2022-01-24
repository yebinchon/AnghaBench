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
struct eap_tnc_data {int dummy; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTINUE ; 
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int EAP_TNC_FLAGS_START ; 
 int EAP_TNC_VERSION ; 
 int /*<<< orphan*/  EAP_TYPE_TNC ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAIL ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_tnc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC4(struct eap_sm *sm,
					   struct eap_tnc_data *data, u8 id)
{
	struct wpabuf *req;

	req = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_TNC, 1, EAP_CODE_REQUEST,
			    id);
	if (req == NULL) {
		FUNC2(MSG_ERROR, "EAP-TNC: Failed to allocate memory for "
			   "request");
		FUNC1(data, FAIL);
		return NULL;
	}

	FUNC3(req, EAP_TNC_FLAGS_START | EAP_TNC_VERSION);

	FUNC1(data, CONTINUE);

	return req;
}