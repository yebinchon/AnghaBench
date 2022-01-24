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
struct wpa_global_dst {int /*<<< orphan*/  used; int /*<<< orphan*/  pipe; struct wpa_global_dst* next; } ;
struct ctrl_iface_global_priv {struct wpa_global_dst* ctrl_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_global_dst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct wpa_global_dst*) ; 

__attribute__((used)) static void FUNC3(struct ctrl_iface_global_priv *priv)
{
	struct wpa_global_dst *dst, *next;

	dst = priv->ctrl_dst;

	while (dst) {
		next = dst->next;
		if (FUNC0(dst->pipe, dst->used)) {
			FUNC2(MSG_DEBUG, "CTRL: closing broken pipe %p",
				   dst);
			FUNC1(dst);
		}
		dst = next;
	}
}