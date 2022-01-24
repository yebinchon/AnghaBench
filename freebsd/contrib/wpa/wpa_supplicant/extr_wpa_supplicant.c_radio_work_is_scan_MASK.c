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
struct wpa_radio_work {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(struct wpa_radio_work *work)
{
	return FUNC0(work->type, "scan") == 0 ||
		FUNC0(work->type, "p2p-scan") == 0;
}