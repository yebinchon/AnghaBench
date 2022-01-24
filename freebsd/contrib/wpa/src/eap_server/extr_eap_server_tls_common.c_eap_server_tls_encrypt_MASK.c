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
struct eap_ssl_data {int /*<<< orphan*/  conn; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

struct wpabuf * FUNC2(struct eap_sm *sm,
				       struct eap_ssl_data *data,
				       const struct wpabuf *plain)
{
	struct wpabuf *buf;

	buf = FUNC0(sm->ssl_ctx, data->conn,
				     plain);
	if (buf == NULL) {
		FUNC1(MSG_INFO, "SSL: Failed to encrypt Phase 2 data");
		return NULL;
	}

	return buf;
}