#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int /*<<< orphan*/  ssl; int /*<<< orphan*/  phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {struct wpabuf* (* buildReq ) (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RADIUS_ATTR_EAP_MESSAGE ; 
 struct wpabuf* FUNC0 (struct eap_sm*,int /*<<< orphan*/ *,struct wpabuf*) ; 
 struct wpabuf* FUNC1 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 struct wpabuf* FUNC2 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC6(
	struct eap_sm *sm, struct eap_ttls_data *data, u8 id)
{
	struct wpabuf *buf, *encr_req;


	buf = data->phase2_method->buildReq(sm, data->phase2_priv, id);
	if (buf == NULL)
		return NULL;

	FUNC3(MSG_DEBUG,
			    "EAP-TTLS/EAP: Encapsulate Phase 2 data", buf);

	buf = FUNC1(buf, RADIUS_ATTR_EAP_MESSAGE, 1);
	if (buf == NULL) {
		FUNC4(MSG_DEBUG, "EAP-TTLS/EAP: Failed to encapsulate "
			   "packet");
		return NULL;
	}

	FUNC3(MSG_DEBUG, "EAP-TTLS/EAP: Encrypt encapsulated "
			    "Phase 2 data", buf);

	encr_req = FUNC0(sm, &data->ssl, buf);
	FUNC5(buf);

	return encr_req;
}