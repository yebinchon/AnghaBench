#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  token; } ;
struct wpa_supplicant {TYPE_1__ beacon_rep_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEASUREMENT_REPORT_MODE_ACCEPT ; 
 int /*<<< orphan*/  MEASURE_TYPE_BEACON ; 
 int FUNC0 (struct wpabuf**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct wpa_supplicant *wpa_s,
				      struct wpabuf **buf)
{
	return FUNC0(buf, wpa_s->beacon_rep_data.token,
				    MEASUREMENT_REPORT_MODE_ACCEPT,
				    MEASURE_TYPE_BEACON, NULL, 0);
}