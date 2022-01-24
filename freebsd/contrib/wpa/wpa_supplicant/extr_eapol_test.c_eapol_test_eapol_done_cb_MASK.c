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
struct eapol_test_data {int /*<<< orphan*/  wpa_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPA_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *ctx)
{
	struct eapol_test_data *e = ctx;

	FUNC0("WPA: EAPOL processing complete\n");
	FUNC1(e->wpa_s);
	FUNC2(e->wpa_s, WPA_COMPLETED);
}