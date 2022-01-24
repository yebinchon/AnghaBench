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
struct wpa_supplicant {int dummy; } ;
struct dl_list {int dummy; } ;
struct ctrl_iface_msg {int level; int type; char const* txt; size_t len; int /*<<< orphan*/  list; struct wpa_supplicant* wpa_s; } ;
typedef  enum wpa_msg_type { ____Placeholder_wpa_msg_type } wpa_msg_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dl_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ctrl_iface_msg*,char const*,size_t) ; 
 struct ctrl_iface_msg* FUNC4 (int) ; 
 int /*<<< orphan*/  wpas_ctrl_msg_queue_timeout ; 

__attribute__((used)) static void FUNC5(struct dl_list *queue,
				struct wpa_supplicant *wpa_s, int level,
				enum wpa_msg_type type,
				const char *txt, size_t len)
{
	struct ctrl_iface_msg *msg;

	msg = FUNC4(sizeof(*msg) + len);
	if (!msg)
		return;

	msg->wpa_s = wpa_s;
	msg->level = level;
	msg->type = type;
	FUNC3(msg + 1, txt, len);
	msg->txt = (const char *) (msg + 1);
	msg->len = len;
	FUNC0(queue, &msg->list);
	FUNC1(wpas_ctrl_msg_queue_timeout, wpa_s, NULL);
	FUNC2(0, 0, wpas_ctrl_msg_queue_timeout, wpa_s, NULL);
}