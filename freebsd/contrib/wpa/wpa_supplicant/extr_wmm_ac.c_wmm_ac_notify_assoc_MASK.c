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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int dummy; } ;
struct wmm_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/  const*,size_t,struct wmm_params const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(struct wpa_supplicant *wpa_s, const u8 *ies,
			 size_t ies_len, const struct wmm_params *wmm_params)
{
	if (FUNC0(wpa_s, ies, ies_len, wmm_params))
		return;

	FUNC1(MSG_DEBUG,
		   "WMM AC: Valid WMM association, WMM AC is enabled");
}