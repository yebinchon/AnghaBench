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
struct eap_ttls_data {int ttls_version; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int EAP_TLS_FLAGS_START ; 
 int /*<<< orphan*/  EAP_TYPE_TTLS ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PHASE1 ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_ttls_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC4(struct eap_sm *sm,
					    struct eap_ttls_data *data, u8 id)
{
	struct wpabuf *req;

	req = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_TTLS, 1,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC2(MSG_ERROR, "EAP-TTLS: Failed to allocate memory for"
			   " request");
		FUNC1(data, FAILURE);
		return NULL;
	}

	FUNC3(req, EAP_TLS_FLAGS_START | data->ttls_version);

	FUNC1(data, PHASE1);

	return req;
}