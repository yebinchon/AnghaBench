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
struct wpa_supplicant {int /*<<< orphan*/ * go_params; } ;
struct p2p_go_neg_results {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct p2p_go_neg_results*,int) ; 

__attribute__((used)) static int FUNC2(struct wpa_supplicant *wpa_s,
				    struct p2p_go_neg_results *params)
{
	if (wpa_s->go_params == NULL) {
		wpa_s->go_params = FUNC0(sizeof(*params));
		if (wpa_s->go_params == NULL)
			return -1;
	}
	FUNC1(wpa_s->go_params, params, sizeof(*params));
	return 0;
}