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
struct eap_ttls_data {TYPE_1__ ssl; } ;
struct eap_sm {int identity_len; int /*<<< orphan*/  identity; int /*<<< orphan*/  tls_session_lifetime; } ;

/* Variables and functions */
 int EAP_TYPE_TTLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpabuf*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static void FUNC4(struct eap_sm *sm,
				   struct eap_ttls_data *data)
{
	struct wpabuf *buf;

	if (!sm->tls_session_lifetime)
		return;

	buf = FUNC1(1 + 1 + sm->identity_len);
	if (!buf)
		return;
	FUNC3(buf, EAP_TYPE_TTLS);
	if (sm->identity) {
		u8 id_len;

		if (sm->identity_len <= 255)
			id_len = sm->identity_len;
		else
			id_len = 255;
		FUNC3(buf, id_len);
		FUNC2(buf, sm->identity, id_len);
	} else {
		FUNC3(buf, 0);
	}
	FUNC0(data->ssl.conn, buf);
}