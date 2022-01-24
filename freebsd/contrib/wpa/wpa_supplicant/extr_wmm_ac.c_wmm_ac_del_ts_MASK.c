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
typedef  enum ts_dir_idx { ____Placeholder_ts_dir_idx } ts_dir_idx ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int TS_DIR_IDX_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s, u8 ac, int dir_bitmap)
{
	enum ts_dir_idx idx;

	for (idx = 0; idx < TS_DIR_IDX_COUNT; idx++) {
		if (!(dir_bitmap & FUNC0(idx)))
			continue;

		FUNC1(wpa_s, ac, idx);
	}
}