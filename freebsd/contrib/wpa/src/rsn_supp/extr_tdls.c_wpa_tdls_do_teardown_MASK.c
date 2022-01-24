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
typedef  int /*<<< orphan*/  u16 ;
struct wpa_tdls_peer {int /*<<< orphan*/  addr; } ;
struct wpa_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_sm*,struct wpa_tdls_peer*) ; 
 int FUNC1 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wpa_sm *sm, struct wpa_tdls_peer *peer,
				u16 reason_code)
{
	int ret;

	ret = FUNC1(sm, peer->addr, reason_code);
	/* disable the link after teardown was sent */
	FUNC0(sm, peer);

	return ret;
}