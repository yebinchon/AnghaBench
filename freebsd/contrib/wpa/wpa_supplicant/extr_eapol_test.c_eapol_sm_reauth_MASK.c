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
struct eapol_test_data {int /*<<< orphan*/  wpa_s; scalar_t__ radius_access_accept_received; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *eloop_ctx, void *timeout_ctx)
{
	struct eapol_test_data *e = eloop_ctx;
	FUNC0("\n\n\n\n\neapol_test: Triggering EAP reauthentication\n\n");
	e->radius_access_accept_received = 0;
	FUNC1(e->wpa_s, NULL);
}