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

/* Variables and functions */
#define  WLAN_PA_GAS_COMEBACK_RESP 130 
#define  WLAN_PA_GAS_INITIAL_REQ 129 
#define  WLAN_PA_GAS_INITIAL_RESP 128 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int* FUNC1 (struct wpabuf*) ; 
 size_t FUNC2 (struct wpabuf*) ; 
 int* FUNC3 (struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC5(struct wpabuf *buf)
{
	u8 action;
	size_t offset;
	u8 *len;

	if (buf == NULL || FUNC2(buf) < 2)
		return;

	action = *(FUNC1(buf) + 1);
	switch (action) {
	case WLAN_PA_GAS_INITIAL_REQ:
		offset = 3 + 4;
		break;
	case WLAN_PA_GAS_INITIAL_RESP:
		offset = 7 + 4;
		break;
	case WLAN_PA_GAS_COMEBACK_RESP:
		offset = 8 + 4;
		break;
	default:
		return;
	}

	if (FUNC2(buf) < offset + 2)
		return;

	len = FUNC3(buf) + offset;
	FUNC0(len, (u8 *) FUNC4(buf, 0) - len - 2);
}