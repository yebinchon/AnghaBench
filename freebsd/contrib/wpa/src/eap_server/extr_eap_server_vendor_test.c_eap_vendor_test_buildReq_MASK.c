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
struct eap_vendor_test_data {scalar_t__ state; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_VENDOR_ID ; 
 int /*<<< orphan*/  EAP_VENDOR_TYPE ; 
 scalar_t__ INIT ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC3(struct eap_sm *sm, void *priv,
						u8 id)
{
	struct eap_vendor_test_data *data = priv;
	struct wpabuf *req;

	req = FUNC0(EAP_VENDOR_ID, EAP_VENDOR_TYPE, 1,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC1(MSG_ERROR, "EAP-VENDOR-TEST: Failed to allocate "
			   "memory for request");
		return NULL;
	}

	FUNC2(req, data->state == INIT ? 1 : 3);

	return req;
}