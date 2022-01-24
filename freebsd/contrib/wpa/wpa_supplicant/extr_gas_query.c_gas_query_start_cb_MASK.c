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
struct wpa_supplicant {int dummy; } ;
struct wpa_radio_work {scalar_t__ started; struct gas_query_pending* ctx; } ;
struct gas_query_pending {struct gas_query* gas; } ;
struct gas_query {struct wpa_radio_work* work; struct wpa_supplicant* wpa_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAS_QUERY_DELETED_AT_DEINIT ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct gas_query*,struct gas_query_pending*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gas_query_pending*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gas_query*,struct gas_query_pending*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_radio_work*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC6(struct wpa_radio_work *work, int deinit)
{
	struct gas_query_pending *query = work->ctx;
	struct gas_query *gas = query->gas;
	struct wpa_supplicant *wpa_s = gas->wpa_s;

	if (deinit) {
		if (work->started) {
			gas->work = NULL;
			FUNC0(gas, query, GAS_QUERY_DELETED_AT_DEINIT);
			return;
		}

		FUNC1(query, 1);
		return;
	}

	if (FUNC5(wpa_s) < 0) {
		FUNC4(wpa_s, MSG_INFO,
			"Failed to assign random MAC address for GAS");
		FUNC1(query, 1);
		FUNC3(work);
		return;
	}

	gas->work = work;
	FUNC2(gas, query);
}