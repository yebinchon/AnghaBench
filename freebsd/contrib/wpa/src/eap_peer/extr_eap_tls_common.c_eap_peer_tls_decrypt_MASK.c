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
struct wpabuf {int dummy; } ;
struct eap_ssl_data {int /*<<< orphan*/  conn; int /*<<< orphan*/  ssl_ctx; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 struct wpabuf* FUNC0 (struct eap_ssl_data*,struct wpabuf const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_ssl_data*) ; 
 struct wpabuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(struct eap_sm *sm, struct eap_ssl_data *data,
			 const struct wpabuf *in_data,
			 struct wpabuf **in_decrypted)
{
	const struct wpabuf *msg;
	int need_more_input;

	msg = FUNC0(data, in_data, &need_more_input);
	if (msg == NULL)
		return need_more_input ? 1 : -1;

	*in_decrypted = FUNC2(data->ssl_ctx, data->conn, msg);
	FUNC1(data);
	if (*in_decrypted == NULL) {
		FUNC3(MSG_INFO, "SSL: Failed to decrypt Phase 2 data");
		return -1;
	}
	return 0;
}