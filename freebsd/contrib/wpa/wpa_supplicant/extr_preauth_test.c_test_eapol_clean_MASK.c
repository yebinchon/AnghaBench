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
struct wpa_supplicant {int /*<<< orphan*/  conf; int /*<<< orphan*/ * ctrl_iface; int /*<<< orphan*/  scard; int /*<<< orphan*/  wpa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct wpa_supplicant *wpa_s)
{
	FUNC1(wpa_s->wpa);
	FUNC0(wpa_s->wpa);
	FUNC4(wpa_s->wpa);
	FUNC2(wpa_s->scard);
	if (wpa_s->ctrl_iface) {
		FUNC5(wpa_s->ctrl_iface);
		wpa_s->ctrl_iface = NULL;
	}
	FUNC3(wpa_s->conf);
}