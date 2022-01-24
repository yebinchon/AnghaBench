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
struct eap_wsc_data {int dummy; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_VENDOR_TYPE_WSC ; 
 int /*<<< orphan*/  EAP_VENDOR_WFA ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WSC_Start ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC3(struct eap_sm *sm,
					   struct eap_wsc_data *data, u8 id)
{
	struct wpabuf *req;

	req = FUNC0(EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC, 2,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC1(MSG_ERROR, "EAP-WSC: Failed to allocate memory for "
			   "request");
		return NULL;
	}

	FUNC1(MSG_DEBUG, "EAP-WSC: Send WSC/Start");
	FUNC2(req, WSC_Start); /* Op-Code */
	FUNC2(req, 0); /* Flags */

	return req;
}