#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wps_er_sta {struct wps_er_sta* cred; int /*<<< orphan*/  http; struct wps_er_sta* dev_name; struct wps_er_sta* serial_number; struct wps_er_sta* model_number; struct wps_er_sta* model_name; struct wps_er_sta* manufacturer; scalar_t__ wps; TYPE_2__* ap; } ;
struct TYPE_4__ {TYPE_1__* er; } ;
struct TYPE_3__ {int /*<<< orphan*/  wps; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPS_EV_ER_ENROLLEE_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wps_er_sta*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wps_er_sta*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wps_er_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wps_er_sta_timeout ; 

__attribute__((used)) static void FUNC5(struct wps_er_sta *sta)
{
	FUNC4(sta->ap->er->wps, sta, WPS_EV_ER_ENROLLEE_REMOVE);
	if (sta->wps)
		FUNC3(sta->wps);
	FUNC2(sta->manufacturer);
	FUNC2(sta->model_name);
	FUNC2(sta->model_number);
	FUNC2(sta->serial_number);
	FUNC2(sta->dev_name);
	FUNC1(sta->http);
	FUNC0(wps_er_sta_timeout, sta, NULL);
	FUNC2(sta->cred);
	FUNC2(sta);
}