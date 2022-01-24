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
typedef  size_t u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  new_peer_addr; int /*<<< orphan*/  old_peer_addr; struct fst_iface* new_iface; struct fst_iface* old_iface; } ;
struct fst_session {TYPE_1__ data; } ;
struct fst_iface {int dummy; } ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 size_t FST_ACTION_MAX_SUPPORTED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WLAN_ACTION_FST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * fst_action_names ; 
 int FUNC1 (struct fst_iface*,int /*<<< orphan*/ ,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_session*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct fst_session*,struct fst_iface*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wpabuf const*) ; 

__attribute__((used)) static int FUNC10(struct fst_session *s, Boolean old_iface,
				   const void *payload, size_t size,
				   const struct wpabuf *extra_buf)
{
	size_t len;
	int res;
	struct wpabuf *buf;
	u8 action;
	struct fst_iface *iface =
		old_iface ? s->data.old_iface : s->data.new_iface;

	FUNC0(payload != NULL);
	FUNC0(size != 0);

	action = *(const u8 *) payload;

	FUNC0(action <= FST_ACTION_MAX_SUPPORTED);

	if (!iface) {
		FUNC2(s, MSG_ERROR,
				   "no %s interface for FST Action '%s' sending",
				   old_iface ? "old" : "new",
				   fst_action_names[action]);
		return -1;
	}

	len = sizeof(u8) /* category */ + size;
	if (extra_buf)
		len += FUNC9(extra_buf);

	buf = FUNC4(len);
	if (!buf) {
		FUNC2(s, MSG_ERROR,
				   "cannot allocate buffer of %zu bytes for FST Action '%s' sending",
				   len, fst_action_names[action]);
		return -1;
	}

	FUNC8(buf, WLAN_ACTION_FST);
	FUNC7(buf, payload, size);
	if (extra_buf)
		FUNC6(buf, extra_buf);

	res = FUNC1(iface,
				    old_iface ? s->data.old_peer_addr :
				    s->data.new_peer_addr, buf);
	if (res < 0)
		FUNC3(s, iface, MSG_ERROR,
				  "failed to send FST Action '%s'",
				  fst_action_names[action]);
	else
		FUNC3(s, iface, MSG_DEBUG, "FST Action '%s' sent",
				  fst_action_names[action]);
	FUNC5(buf);

	return res;
}