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
typedef  int u8 ;
typedef  struct wpabuf const wpabuf ;
struct eap_ssl_data {int /*<<< orphan*/  conn; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int EAP_TLS_VERSION_MASK ; 
 int EAP_UNAUTH_TLS_TYPE ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int EAP_VENDOR_TYPE_UNAUTH_TLS ; 
 int /*<<< orphan*/  EAP_VENDOR_UNAUTH_TLS ; 
 int /*<<< orphan*/  EAP_VENDOR_WFA_NEW ; 
 int EAP_VENDOR_WFA_UNAUTH_TLS ; 
 int EAP_WFA_UNAUTH_TLS_TYPE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int* FUNC0 (int /*<<< orphan*/ ,int,struct wpabuf const*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_ssl_data*) ; 
 int FUNC2 (struct eap_ssl_data*,int,int const**,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (struct wpabuf const*) ; 

int FUNC6(struct eap_sm *sm, struct eap_ssl_data *data,
			   struct wpabuf *respData, void *priv, int eap_type,
			   int (*proc_version)(struct eap_sm *sm, void *priv,
					       int peer_version),
			   void (*proc_msg)(struct eap_sm *sm, void *priv,
					    const struct wpabuf *respData))
{
	const u8 *pos;
	u8 flags;
	size_t left;
	int ret, res = 0;

	if (eap_type == EAP_UNAUTH_TLS_TYPE)
		pos = FUNC0(EAP_VENDOR_UNAUTH_TLS,
				       EAP_VENDOR_TYPE_UNAUTH_TLS, respData,
				       &left);
	else if (eap_type == EAP_WFA_UNAUTH_TLS_TYPE)
		pos = FUNC0(EAP_VENDOR_WFA_NEW,
				       EAP_VENDOR_WFA_UNAUTH_TLS, respData,
				       &left);
	else
		pos = FUNC0(EAP_VENDOR_IETF, eap_type, respData,
				       &left);
	if (pos == NULL || left < 1)
		return 0; /* Should not happen - frame already validated */
	flags = *pos++;
	left--;
	FUNC4(MSG_DEBUG, "SSL: Received packet(len=%lu) - Flags 0x%02x",
		   (unsigned long) FUNC5(respData), flags);

	if (proc_version &&
	    proc_version(sm, priv, flags & EAP_TLS_VERSION_MASK) < 0)
		return -1;

	ret = FUNC2(data, flags, &pos, &left);
	if (ret < 0) {
		res = -1;
		goto done;
	} else if (ret == 1)
		return 0;

	if (proc_msg)
		proc_msg(sm, priv, respData);

	if (FUNC3(sm->ssl_ctx, data->conn) > 1) {
		FUNC4(MSG_INFO, "SSL: Locally detected fatal error in "
			   "TLS processing");
		res = -1;
	}

done:
	FUNC1(data);

	return res;
}