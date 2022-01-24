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
struct wps_er_sta {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wps_er_sta*) ; 

__attribute__((used)) static void FUNC3(void *eloop_data, void *user_ctx)
{
	struct wps_er_sta *sta = eloop_data;
	FUNC1(MSG_DEBUG, "WPS ER: STA entry timed out");
	FUNC0(&sta->list);
	FUNC2(sta);
}