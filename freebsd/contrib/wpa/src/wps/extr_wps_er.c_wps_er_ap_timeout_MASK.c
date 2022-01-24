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
struct wps_er_ap {int dummy; } ;
struct wps_er {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_er*,struct wps_er_ap*) ; 

__attribute__((used)) static void FUNC2(void *eloop_data, void *user_ctx)
{
	struct wps_er *er = eloop_data;
	struct wps_er_ap *ap = user_ctx;
	FUNC0(MSG_DEBUG, "WPS ER: AP advertisement timed out");
	FUNC1(er, ap);
}