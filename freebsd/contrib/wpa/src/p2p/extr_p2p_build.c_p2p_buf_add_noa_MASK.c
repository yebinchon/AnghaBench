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
struct wpabuf {int dummy; } ;
struct p2p_noa_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int P2P_ATTR_NOTICE_OF_ABSENCE ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,struct p2p_noa_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 

void FUNC4(struct wpabuf *buf, u8 noa_index, u8 opp_ps, u8 ctwindow,
		     struct p2p_noa_desc *desc1, struct p2p_noa_desc *desc2)
{
	/* Notice of Absence */
	FUNC3(buf, P2P_ATTR_NOTICE_OF_ABSENCE);
	FUNC2(buf, 2 + (desc1 ? 13 : 0) + (desc2 ? 13 : 0));
	FUNC3(buf, noa_index);
	FUNC3(buf, (opp_ps ? 0x80 : 0) | (ctwindow & 0x7f));
	FUNC0(buf, desc1);
	FUNC0(buf, desc2);
	FUNC1(MSG_DEBUG, "P2P: * Notice of Absence");
}