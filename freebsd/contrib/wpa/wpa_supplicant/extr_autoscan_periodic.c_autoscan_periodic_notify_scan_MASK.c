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
struct wpa_scan_results {int dummy; } ;
struct autoscan_periodic_data {int periodic_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(void *priv,
					 struct wpa_scan_results *scan_res)
{
	struct autoscan_periodic_data *data = priv;

	FUNC0(MSG_DEBUG, "autoscan periodic: scan result notification");

	return data->periodic_interval;
}