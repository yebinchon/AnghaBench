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
struct p2p_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_IE_VENDOR_TYPE ; 
#define  WLAN_PA_GAS_COMEBACK_REQ 132 
#define  WLAN_PA_GAS_COMEBACK_RESP 131 
#define  WLAN_PA_GAS_INITIAL_REQ 130 
#define  WLAN_PA_GAS_INITIAL_RESP 129 
#define  WLAN_PA_VENDOR_SPECIFIC 128 
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,int const*,int const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int const*,int const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,int const*,int const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct p2p_data*,int const*,int const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct p2p_data*,int const*,int const*,size_t,int) ; 

__attribute__((used)) static void FUNC6(struct p2p_data *p2p, const u8 *da,
				 const u8 *sa, const u8 *bssid, const u8 *data,
				 size_t len, int freq)
{
	if (len < 1)
		return;

	switch (data[0]) {
	case WLAN_PA_VENDOR_SPECIFIC:
		data++;
		len--;
		if (len < 4)
			return;
		if (FUNC0(data) != P2P_IE_VENDOR_TYPE)
			return;

		data += 4;
		len -= 4;

		FUNC5(p2p, sa, data, len, freq);
		break;
	case WLAN_PA_GAS_INITIAL_REQ:
		FUNC3(p2p, sa, data + 1, len - 1, freq);
		break;
	case WLAN_PA_GAS_INITIAL_RESP:
		FUNC4(p2p, sa, data + 1, len - 1, freq);
		break;
	case WLAN_PA_GAS_COMEBACK_REQ:
		FUNC1(p2p, sa, data + 1, len - 1, freq);
		break;
	case WLAN_PA_GAS_COMEBACK_RESP:
		FUNC2(p2p, sa, data + 1, len - 1, freq);
		break;
	}
}