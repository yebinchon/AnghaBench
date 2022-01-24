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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_ttls_data {int /*<<< orphan*/  ttls_version; int /*<<< orphan*/  resuming; TYPE_1__ ssl; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;
struct eap_method_ret {int dummy; } ;

/* Variables and functions */
 int EAP_TLS_FLAGS_START ; 
 int EAP_TLS_VERSION_MASK ; 
 int /*<<< orphan*/  EAP_TYPE_TTLS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (struct wpabuf const*) ; 
 struct wpabuf* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC2 (struct eap_sm*,TYPE_1__*,int /*<<< orphan*/ ,struct eap_method_ret*,struct wpabuf const*,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*) ; 
 int FUNC4 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int,struct wpabuf*,struct wpabuf**) ; 
 int FUNC5 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int,struct wpabuf*,struct wpabuf**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int const*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC10(struct eap_sm *sm, void *priv,
					struct eap_method_ret *ret,
					const struct wpabuf *reqData)
{
	size_t left;
	int res;
	u8 flags, id;
	struct wpabuf *resp;
	const u8 *pos;
	struct eap_ttls_data *data = priv;
	struct wpabuf msg;

	pos = FUNC2(sm, &data->ssl, EAP_TYPE_TTLS, ret,
					reqData, &left, &flags);
	if (pos == NULL)
		return NULL;
	id = FUNC0(reqData);

	if (flags & EAP_TLS_FLAGS_START) {
		FUNC7(MSG_DEBUG, "EAP-TTLS: Start (server ver=%d, own "
			   "ver=%d)", flags & EAP_TLS_VERSION_MASK,
			   data->ttls_version);

		/* RFC 5281, Ch. 9.2:
		 * "This packet MAY contain additional information in the form
		 * of AVPs, which may provide useful hints to the client"
		 * For now, ignore any potential extra data.
		 */
		left = 0;
	}

	FUNC9(&msg, pos, left);

	resp = NULL;
	if (FUNC6(sm->ssl_ctx, data->ssl.conn) &&
	    !data->resuming) {
		res = FUNC4(sm, data, ret, id, &msg, &resp);
	} else {
		res = FUNC5(sm, data, ret, id,
						 &msg, &resp);
	}

	FUNC3(sm, data, ret);

	/* FIX: what about res == -1? Could just move all error processing into
	 * the other functions and get rid of this res==1 case here. */
	if (res == 1) {
		FUNC8(resp);
		return FUNC1(id, EAP_TYPE_TTLS,
					      data->ttls_version);
	}
	return resp;
}