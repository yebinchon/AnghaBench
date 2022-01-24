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
struct eap_tls_data {int /*<<< orphan*/  eap_type; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTINUE ; 
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_TLS_FLAGS_START ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_tls_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC4(struct eap_sm *sm,
					   struct eap_tls_data *data, u8 id)
{
	struct wpabuf *req;

	req = FUNC0(data->eap_type, 1, EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC2(MSG_ERROR, "EAP-TLS: Failed to allocate memory for "
			   "request");
		FUNC1(data, FAILURE);
		return NULL;
	}

	FUNC3(req, EAP_TLS_FLAGS_START);

	FUNC1(data, CONTINUE);

	return req;
}