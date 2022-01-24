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
typedef  int u8 ;
struct sta_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  WFA_WNM_NOTIF_SUBELEM_CELL_DATA_CAPA 129 
#define  WFA_WNM_NOTIF_SUBELEM_NON_PREF_CHAN_REPORT 128 
 int /*<<< orphan*/  FUNC0 (struct sta_info*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(struct sta_info *sta, u8 type,
				      const u8 *buf, size_t len,
				      int *first_non_pref_chan)
{
	switch (type) {
	case WFA_WNM_NOTIF_SUBELEM_NON_PREF_CHAN_REPORT:
		if (*first_non_pref_chan) {
			/*
			 * Need to free the previously stored entries now to
			 * allow the update to replace all entries.
			 */
			*first_non_pref_chan = 0;
			FUNC1(sta);
		}
		FUNC0(sta, buf, len);
		break;
	case WFA_WNM_NOTIF_SUBELEM_CELL_DATA_CAPA:
		FUNC2(sta, buf, len);
		break;
	default:
		FUNC3(MSG_DEBUG,
			   "MBO: Ignore unknown WNM Notification WFA subelement %u",
			   type);
		break;
	}
}