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
struct eap_peap_data {int peap_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int EAP_TLS_FLAGS_START ; 
 int /*<<< orphan*/  EAP_TYPE_PEAP ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PHASE1 ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_peap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC4(struct eap_sm *sm,
					    struct eap_peap_data *data, u8 id)
{
	struct wpabuf *req;

	req = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_PEAP, 1,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC2(MSG_ERROR, "EAP-PEAP: Failed to allocate memory for"
			   " request");
		FUNC1(data, FAILURE);
		return NULL;
	}

	FUNC3(req, EAP_TLS_FLAGS_START | data->peap_version);

	FUNC1(data, PHASE1);

	return req;
}