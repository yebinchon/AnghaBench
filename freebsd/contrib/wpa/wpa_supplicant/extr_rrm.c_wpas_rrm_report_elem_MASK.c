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
 int WLAN_EID_MEASURE_REPORT ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 scalar_t__ FUNC2 (struct wpabuf**,int) ; 

__attribute__((used)) static int FUNC3(struct wpabuf **buf, u8 token, u8 mode, u8 type,
				const u8 *data, size_t data_len)
{
	if (FUNC2(buf, 5 + data_len))
		return -1;

	FUNC1(*buf, WLAN_EID_MEASURE_REPORT);
	FUNC1(*buf, 3 + data_len);
	FUNC1(*buf, token);
	FUNC1(*buf, mode);
	FUNC1(*buf, type);

	if (data_len)
		FUNC0(*buf, data, data_len);

	return 0;
}