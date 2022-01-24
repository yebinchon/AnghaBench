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
struct eap_sm {int identity_len; int /*<<< orphan*/  identity; int /*<<< orphan*/  ssl_ctx; int /*<<< orphan*/  tls_session_lifetime; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_peap_data {TYPE_1__ ssl; } ;

/* Variables and functions */
 int EAP_TYPE_PEAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpabuf*) ; 
 struct wpabuf* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int) ; 

__attribute__((used)) static void FUNC5(struct eap_sm *sm,
				   struct eap_peap_data *data)
{
	struct wpabuf *buf;

	if (!sm->tls_session_lifetime ||
	    FUNC0(sm->ssl_ctx, data->ssl.conn))
		return;

	buf = FUNC2(1 + 1 + sm->identity_len);
	if (!buf)
		return;
	FUNC4(buf, EAP_TYPE_PEAP);
	if (sm->identity) {
		u8 id_len;

		if (sm->identity_len <= 255)
			id_len = sm->identity_len;
		else
			id_len = 255;
		FUNC4(buf, id_len);
		FUNC3(buf, sm->identity, id_len);
	} else {
		FUNC4(buf, 0);
	}
	FUNC1(data->ssl.conn, buf);
}