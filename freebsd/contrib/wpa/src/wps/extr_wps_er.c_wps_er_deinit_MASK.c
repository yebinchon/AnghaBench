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
struct wps_er {int deinitializing; void (* deinit_done_cb ) (void*) ;void* deinit_done_ctx; int /*<<< orphan*/  ap_unsubscribing; int /*<<< orphan*/  http_srv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wps_er*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_er*) ; 
 int /*<<< orphan*/  wps_er_deinit_finish ; 
 int /*<<< orphan*/  FUNC5 (struct wps_er*) ; 

void FUNC6(struct wps_er *er, void (*cb)(void *ctx), void *ctx)
{
	if (er == NULL)
		return;
	FUNC2(er->http_srv);
	FUNC4(er);
	FUNC5(er);
	FUNC1(FUNC0(&er->ap_unsubscribing) ? 0 : 5, 0,
			       wps_er_deinit_finish, er, NULL);
	FUNC3(MSG_DEBUG, "WPS ER: Finish deinit from timeout");
	er->deinitializing = 1;
	er->deinit_done_cb = cb;
	er->deinit_done_ctx = ctx;
}