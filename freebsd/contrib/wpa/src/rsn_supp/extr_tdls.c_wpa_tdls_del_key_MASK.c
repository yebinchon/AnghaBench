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
struct wpa_tdls_peer {int /*<<< orphan*/  addr; } ;
struct wpa_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  WPA_ALG_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wpa_sm *sm, struct wpa_tdls_peer *peer)
{
	if (FUNC1(sm, WPA_ALG_NONE, peer->addr,
			   0, 0, NULL, 0, NULL, 0) < 0) {
		FUNC0(MSG_WARNING, "TDLS: Failed to delete TPK-TK from "
			   "the driver");
		return -1;
	}

	return 0;
}